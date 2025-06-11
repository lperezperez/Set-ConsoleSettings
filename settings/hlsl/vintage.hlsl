// --- Defines for effects ---
// Comment/Uncomment to deactivate/activate each desired effect. Adjust values as per your preference.
#define SCREEN_CURVATURE .2 // Strength of the screen curvature (higher = more curved). Typical values: .05 to .3
#define SCANLINE_THICKNESS .2 // Thickness of each scanline (in pixels). Adjust based on 'Scale' or resolution.
#define SCANLINE_FACTOR .5 // Scanline darkness factor (0 to 1). Higher = darker.
#define SCANLINE_BLUR_AMOUNT 1 // Sigma for a small vertical blur. 
#define NOISE_INTENSITY 16 // Noise intensity.
// #define MONOCHROME_COLOR float4(.4, 1, .4, 1) // Monochromatic color (Red, Green, Blue, Alpha). e.g. Vintage green: float4(.4, 1, .4, 1)
#define REFRESH_PERIOD 2 // Sweep period in seconds (time for a complete cycle).
#define REFRESH_BAR_HEIGHT .2 // Sweep band height (as a fraction of screen height, e.g. .1 = 10%).
#define REFRESH_BAR_INTENSITY .05 // Intensity of lightning by the sweep (0 to 1).
#define SHADOW_BORDER_LENGTH .02 // Percentage length of the shadow based on shorter side of the screen rectangle (0 to .5).
#define SHADOW_BORDER_INTENSITY .5 // Shadow darkness (0 to 1).
// Resources
Texture2D shaderTexture : register(t0);
SamplerState samplerState : register(s0);
cbuffer PixelShaderSettings : register(b0) {
	float Time; // Total elapsed time, in seconds.
	float Scale; // Could be used to adjust effects based on DPI/UI scale.
	float2 Resolution; // Input texture resolution (width, height).
	float4 Background; // Background color.
};
// Calculates the luminance (perceived brightness) of a color using standard coefficients for RGB channels.
// Parameters:
//   color: The input color as a float4 (RGBA).
// Returns:
//   The luminance value as a float, in the range 0 to 1.
float getLuminance(float4 color) { return dot(color.rgb, float3(.299, .587, .114)); }
// --- Main shader ---
float4 main(float4 screenPos : SV_POSITION, float2 texCoord : TEXCOORD0) : SV_TARGET
{
	float2 uv = texCoord; // Instance an editable copy of texture coordinates.
	// ─── Screen Curvature Effect. ────────────────────────────────────────────────
	#ifdef SCREEN_CURVATURE
	float2 centeredUV = uv - .5; // Move the origin to the centre of the screen (0,0).
	centeredUV *= (1 + dot(centeredUV, centeredUV) * SCREEN_CURVATURE); // Apply barrel distortion.
	centeredUV *= 1 / (1 + SCREEN_CURVATURE / 4); // Zoom based on SCREEN_CURVATURE.
	uv = centeredUV + .5; // return to (0,1).
	if (uv.x < 0 || uv.x > 1 || uv.y < 0 || uv.y > 1) return Background; // Discard pixels which overflows the screen.
	#endif
	float4 color = shaderTexture.Sample(samplerState, uv); // Sample original texture with coordinates.
	// ─── Scanline Effect. ────────────────────────────────────────────────────────
	#ifdef SCANLINE_BLUR_AMOUNT
	const float w[3] = { .227027, .316216, .07027 }; // w[0], w[1], w[2] (symmetric)
	float2 texelSize = 1 / Resolution;
	// Central sample.
	color *= w[0];
	float totalWeight = w[0];
	// Side samples.
	float2 texelOffsetDir = float2(0, texelSize.y * SCANLINE_BLUR_AMOUNT); // Vertical blur direction.
	for (int i = 1; i <= 2; ++i)
		color += (shaderTexture.Sample(samplerState, uv + texelOffsetDir * i) * w[i] + shaderTexture.Sample(samplerState, uv - texelOffsetDir * i) * w[i]) * (1 + SCANLINE_FACTOR);
	#endif
	#ifdef SCANLINE_THICKNESS
	#ifdef SCANLINE_FACTOR
	float screenY = texCoord.y * Resolution.y;
	if (floor(screenY / SCANLINE_THICKNESS) % 1.5)
    color = lerp(color, Background, SCANLINE_FACTOR);
	#endif
	#endif
	// ─── Monochrome Effect. ──────────────────────────────────────────────────────
	#ifdef MONOCHROME_COLOR
	color = float4(getLuminance(color) * MONOCHROME_COLOR.rgb, MONOCHROME_COLOR.a);
	#endif
	// ─── Refresh Bar Effect. ─────────────────────────────────────────────────────
	#ifdef REFRESH_BAR_HEIGHT
	#ifdef REFRESH_BAR_INTENSITY
	float cycleDuration = 1 + REFRESH_BAR_HEIGHT * 2; // The refresh cycle duration.
	// Position of the bottom of the refresh bar. Moves from -REFRESH_BAR_HEIGHT (completely over top) to 1 + REFRESH_BAR_HEIGHT (completely under bottom).
	float barBottomY = fmod(Time / REFRESH_PERIOD, cycleDuration) - REFRESH_BAR_HEIGHT; // The bottom bar position.
	float barTopY = barBottomY - REFRESH_BAR_HEIGHT; // The top bar position.
	if (uv.y >= barTopY && uv.y <= barBottomY) // If the pixel is inside the refresh bar...
		color.rgb += (smoothstep(0, 1, (barBottomY - texCoord.y) / REFRESH_BAR_HEIGHT) * REFRESH_BAR_INTENSITY);
	#endif
	#endif
	// ─── Noise Effect. ───────────────────────────────────────────────────────────
	#ifdef NOISE_INTENSITY
	float x = (uv.x + 4) * (uv.y + 4) * (Time * 10);
	float grain = (fmod((fmod(x, 13) + 1) * (fmod(x, 123) + 1), .01) - .005) * NOISE_INTENSITY;
	color.rgb = color.rgb > .5 ? color.rgb - grain : color.rgb + grain;
	#endif
	// ─── Shadow Border Effect. ───────────────────────────────────────────────────
	#ifdef SHADOW_BORDER_INTENSITY
	#ifdef SHADOW_BORDER_LENGTH
	float2 distToEdge = min(uv, 1 - uv); // Calculate the distance to the nearest edge (in range [0, .5]).
	color.rgb *= lerp(1 - SHADOW_BORDER_INTENSITY, 1, smoothstep(0, SHADOW_BORDER_LENGTH, min(distToEdge.x, distToEdge.y))); // Create a smooth transition from the start of the border (SHADOW_BORDER_LENGTH) to the actual edge (0).
	#endif
	#endif
	color.rgb = saturate(color.rgb); // Ensure that the colors are in the range 0 to 1.
	return color;
}