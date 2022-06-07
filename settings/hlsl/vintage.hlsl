#define CURVATURE .22 // Set the screen curvature. Comment to disable.
//#define MONOCHROME float4(0, 1, 0, 0) // Set monochrome color. Comment to disable.
//#define SHADOW_BORDER .01 // Set the inner shadow border. Comment to disable.
#define NOISE .05 // Set noise intensity. Comment to disable.
#define REFRESH 2.5 // Set refresh rate and height. Comment to disable.
#define SCANLINE_FACTOR .5 // Set scan line factor. Comment to disable.

Texture2D shaderTexture;
SamplerState samplerState;
cbuffer PixelShaderSettings
{
	float Time;
	float Scale;
	float2 Resolution;
	float4 Background;
};
float getGrayScale(float4 color) { return (color.x + color.y + color.z) / 3; }
float gaussian2D(float x, float y, int sampleCount, float sigma)
{
	sampleCount /= 2;
	x -= sampleCount;
	y -= sampleCount;
	return 1 / (sigma * sqrt(2 * 3.14159265)) * exp(-0.5 * (pow(x, 2) + pow(y, 2)) / pow(sigma, 2));
}
float4 blur(Texture2D input, uint2 size, float2 text, float sigma)
{
	const int sampleCount = 8;
	uint width, height;
	shaderTexture.GetDimensions(width, height);
	float2 texel = float2(1.f / width, 1.f / height);
	float4 color = { 0, 0, 0, 0 };
	sigma *= 2;
	for (int x = 0; x < sampleCount; x++)
	{
		float2 samplePos = { text.x + (x - sampleCount / 2) * texel.x, 0 };
		for (int y = 0; y < sampleCount; y++)
		{
			samplePos.y = text.y + (y - sampleCount / 2) * texel.y;
			if (samplePos.x > 0 && samplePos.y > 0 && samplePos.x < size.x && samplePos.y < size.y)
				color += input.Sample(samplerState, samplePos) * gaussian2D(x, y, sampleCount, sigma);
		}
	}
	return color;
}
float4 darkenColor(float4 color, float length, float position, float alpha)
{
	if (position < length) color.rgb -= (length - position) / length / 2 * alpha;
	return color;
}
float4 innerShadow(float4 color, float2 tex, uint2 size, float border, float alpha)
{
	color = darkenColor(color, border, tex.x, alpha);
	color = darkenColor(color, border, 1 - tex.x, alpha);
	color = darkenColor(color, border, tex.y, alpha);
	return darkenColor(color, border, 1 - tex.y, alpha);
}
float permute(float x) { return 289 * frac(x * (34 * x + 1) / 289.0f); }
float4 main(float4 pos : SV_POSITION, float2 tex : TEXCOORD) : SV_TARGET
{
	uint2 size;
	shaderTexture.GetDimensions(size.x, size.y);
	#ifdef CURVATURE
	// Set screen curvature.
	const float curvature = .5;
	tex.xy -= curvature; // Offcenter screen
	tex.xy *= CURVATURE / (curvature / 10) + pow(tex.x, 2) + pow(tex.y, 2); // Apply ratio
	tex.xy *= CURVATURE; // Zoom
	tex.xy += curvature; // Move back to center
	// Outter box
	float oRatio = CURVATURE / 100;
	if (tex.x < -oRatio || tex.y < -oRatio) return float4(0, 0, 0, 0); 
	if (tex.x > 1 + oRatio || tex.y > 1 + oRatio) return float4(0, 0, 0, 0); 
	#endif
	float4 color = shaderTexture.Sample(samplerState, tex.xy);
	#ifdef SCANLINE_FACTOR
	// Add scan lines
	if (getGrayScale(Background) < 0.5)
		color += blur(shaderTexture, size, tex, Scale) * 0.3;
	color *= (1 - (floor(pos.y / Scale) % 2) * SCANLINE_FACTOR);
	#endif	
	#ifdef MONOCHROME
	// Set monochrome
	float grayscale = getGrayScale(color);
	color = float4(grayscale, grayscale, grayscale, 0) * MONOCHROME;
	#endif
	#ifdef SHADOW_BORDER
	// Set screen shadow.
	color = innerShadow(color, tex, size, SHADOW_BORDER, .5);
	// Set border
	#endif
	#ifdef REFRESH
	// Set refresh effect
	float timeOver = fmod(Time / REFRESH, 1);
	float refreshHeight = REFRESH / 15;
	if (tex.y > timeOver && tex.y - refreshHeight < timeOver) color.rgb -= (timeOver - tex.y) * refreshHeight;
	#endif
	#ifdef NOISE
	// Add noise
	float3 m = float3(tex, Time % 5 / 5) + 1;
	float q = (.95 * frac(permute(permute(permute(m.x) + m.y) + m.z) / 41.) + .025) - .5;
	float r2 = pow(q, 2);
	color.rgb += NOISE * q * (1.365020122861334 + (-.5303572634357367 * r2 + .151015505647689) / (pow(r2, 2) + -.7607324991323768 * r2 + .132089632343748));
	#endif
	return color;
}