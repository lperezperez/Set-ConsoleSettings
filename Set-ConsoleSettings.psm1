$Script:BoolValues = @("false", "true") # Boolean strings
# ─── Color map ────────────────────────────────────────────────────────────────
$Script:ColorMap = @{
	"Black" = @{
		"ANSI" = @{
			"Name" = "Black"
			"FG" = "30"
			"BG" = "40"
		}
		"Cmd" = @{
			"Name" = "Black"
			"Index" = 0
		}
		"Tokens" = @()
	}
	"DarkBlue" = @{
		"ANSI" = @{
			"Name" = "Blue"
			"FG" = "34"
			"BG" = "44"
		}
		"Cmd" = @{
			"Name" = "Blue"
			"Index" = 1
		}
		"Tokens" = @()
	}
	"DarkGreen" = @{
		"ANSI" = @{
			"Name" = "Green"
			"FG" = "32"
			"BG" = "42"
		}
		"Cmd" = @{
			"Name" = "Green"
			"Index" = 2
		}
		"Tokens" = @()
	}
	"DarkCyan" = @{
		"ANSI" = @{
			"Name" = "Cyan"
			"FG" = "36"
			"BG" = "46"
		}
		"Cmd" = @{
			"Name" = "Aqua"
			"Index" = 3
		}
		"Tokens" = @()
	}
	"DarkRed" = @{
		"ANSI" = @{
			"Name" = "Red"
			"FG" = "31"
			"BG" = "41"
		}
		"Cmd" = @{
			"Name" = "Red"
			"Index" = 4
		}
		"Tokens" = @()
	}
	"DarkMagenta" = @{
		"ANSI" = @{
			"Name" = "Magenta"
			"FG" = "35"
			"BG" = "45"
		}
		"Cmd" = @{
			"Name" = "Purple"
			"Index" = 5
		}
		"Tokens" = @()
	}
	"DarkYellow" = @{
		"ANSI" = @{
			"Name" = "Yellow"
			"FG" = "33"
			"BG" = "43"
		}
		"Cmd" = @{
			"Name" = "Yellow"
			"Index" = 6
		}
		"Tokens" = @()
	}
	"Gray" = @{
		"ANSI" = @{
			"Name" = "White"
			"FG" = "37"
			"BG" = "47"
		}
		"Cmd" = @{
			"Name" = "White"
			"Index" = 7
		}
		"Tokens" = @()
	}
	"DarkGray" = @{
		"ANSI" = @{
			"Name" = "Bright Black"
			"FG" = "90"
			"BG" = "100"
		}
		"Cmd" = @{
			"Name" = "Gray"
			"Index" = 8
		}
		"Tokens" = @()
	}
	"Blue" = @{
		"ANSI" = @{
			"Name" = "Bright Blue"
			"FG" = "94"
			"BG" = "104"
		}
		"Cmd" = @{
			"Name" = "Light Blue"
			"Index" = 9
		}
		"Tokens" = @()
	}
	"Green" = @{
		"ANSI" = @{
			"Name" = "Bright Green"
			"FG" = "92"
			"BG" = "102"
		}
		"Cmd" = @{
			"Name" = "Light Green"
			"Index" = 10
		}
		"Tokens" = @()
	}
	"Cyan" = @{
		"ANSI" = @{
			"Name" = "Bright Cyan"
			"FG" = "96"
			"BG" = "106"
		}
		"Cmd" = @{
			"Name" = "Light Aqua"
			"Index" = 11
		}
		"Tokens" = @()
	}
	"Red" = @{
			"ANSI" = @{
				"Name" = "Bright Red"
				"FG" = "91"
				"BG" = "101"
			}
			"Cmd" = @{
				"Name" = "Light Red"
				"Index" = 12
			}
			"Tokens" = @()
	}
	"Magenta" = @{
		"ANSI" = @{
			"Name" = "Bright Magenta"
			"FG" = "95"
			"BG" = "105"
		}
		"Cmd" = @{
			"Name" = "Light Purple"
			"Index" = 13
		}
		"Tokens" = @()
	}
	"Yellow" = @{
		"ANSI" = @{
			"Name" = "Bright Yellow"
			"FG" = "93"
			"BG" = "103"
		}
		"Cmd" = @{
			"Name" = "Light Yellow"
			"Index" = 14
		}
		"Tokens" = @()
	}
	"White" = @{
		"ANSI" = @{
			"Name" = "Bright White"
			"FG" = "97"
			"BG" = "107"
		}
		"Cmd" = @{
			"Name" = "Bright White"
			"Index" = 15
		}
		"Tokens" = @()
	}
}
# ─── Maps console registry setting types ──────────────────────────────────────
$Script:TypeMap = @{
	"CursorSize" = "cursor" # Specifies the percentage of a character cell that is occupied by the cursor. This setting affects the default window. Values: Small (25%), Medium (50%) or Large (100%).
	"FaceName" = "string" # Specifies the name of an alternate command window font. If the font name is empty, the system uses raster fonts.
	"FontFamily" = "isTrueType" # Indicates whether the font is True Type.
	"FontSize" = "size" # Specifies the size of the font in pixels.
	"FontWeight" = "bold" # Specifies whether the font is bold.
	"FullScreen" = "boolean" # Determines whether the console is set to open in full-screen mode.
	"HistoryBufferSize" = "integer" # Specifies the number of commands that can be stored in each command history buffer.
	"HistoryNoDup" = "boolean" # Indicates whether to remove duplicate history entries.
	"InsertMode" = "boolean" # Determines how the system behaves when the user types over existing characters.
	"LoadConIme" = "boolean" # Determines whether or not the IME proxy process for the Windows 2000 console (Conime.exe) is loaded automatically when you log on to Windows 2000.
	"NumberOfHistoryBuffers" = "integer" # Specifies the number of history buffers allocated to store commands.
	"PopupColors" = "fgBgColors" # Specifies both foreground and background colors used in popup windows by color name.
	"QuickEdit" = "boolean" # Determines whether QuickEdit mode is enabled. In QuickEdit mode, users can cut and paste text by using the mouse.
	"ScreenBufferSize" = "size" # Specifies the size of the screen buffer (the screen that is retained in memory). If the size of the screen displayed on the monitor is smaller than the screen buffer, its can be scrolled to see the entire screen.
	"ScreenColors" = "fgBgColors" # Specifies both foreground and background colors used in the console by color name.
	"WindowAlpha" = "integer" # Specifies the opacity of the console window (where 0 is transparent and 255 is opaque).
	"WindowPosition" = "size" # Specifies the position of the command window on the user's screen.
	"WindowSize" = "size" # Specifies the size of the command window (in columns and rows).
}
# ─── Adds the type for each console color registry property ───────────────────
$index = 0
[Enum]::GetValues([ConsoleColor]) | ForEach-Object { $Script:TypeMap.Add("ColorTable$(($index++).ToString('00'))", "color") }
function Assert-DayLight {
	<#
		.SYNOPSIS
		Asserts if currently a light theme shold be used.
		.DESCRIPTION
		Gets a value indicating whether the theme will match light ($true) or dark ($false).
		.PARAMETER GeoLoction
		The return value will be set based on the current device time (daylight hours based through the device Geo-Location).
		.PARAMETER Sunset
		Indicates the local sunrise time when the `Geolocation` switch is set (in case its cannot be retrieved through the device Geo-Location).
		Its default value is: 8:00AM
		.PARAMETER Sunshine
		Indicates the local sunshine time when the `Geolocation` switch is set (in case its cannot be retrieved through the device Geo-Location).
		Its default value is: 7:00PM
		.EXAMPLE
		Assert-DayLight

		Asserts if currently a light theme shold be used based on the current Windows theme. 
		.EXAMPLE
		Assert-DayLight -GeoLocation

		Asserts if currently a light theme shold be used based on the current device time (daylight hours based through the device Geo-Location).
		.EXAMPLE
		Assert-DayLight -GeoLocation -Sunrise "7:00" -Sunset "20:00"

		Asserts if currently a light theme shold be used based on the current device time (daylight hours based through the device Geo-Location). In case Geo-Location could not be retrieved, the sunrise and sunset hours specified will be used to check if currently is day light.
		.NOTES
		By default, this method uses the current Windows theme (for coherence with system light mode).
	#>
	param
	(
		[switch]$GeoLocation,
		[DateTime]$Sunrise = ("8:00" | Get-Date),
		[DateTime]$Sunset = ("19:00" | Get-Date)
	)
	if (-not $GeoLocation) {
		# ─── Get current Windows theme ───────────────────────────────────
		$appsUseLightTheme = Get-ItemPropertyValue "Registry::HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" "AppsUseLightTheme"
		# If light/dark theme is specified...
		if ($null -ne $appsUseLightTheme) {
			$daylight = $appsUseLightTheme -eq 1 # Get the daylight based in the current Widows theme.
			Write-Debug "Daylight: $daylight (based in the current Windows theme)"
			return $daylight
		}
	}
	# ─── Get Geo-Location ───────────────────────────────────────────────────────────
	Write-Debug "Retrieving location..."
	Add-Type -AssemblyName System.Device # Required to access System.Device.Location namespace.
	$GeoWatcher = New-Object System.Device.Location.GeoCoordinateWatcher #Create the required object.
	$GeoWatcher.Start() # Begin resolving current locaton.
	while (($GeoWatcher.Status -ne "Ready") -and ($GeoWatcher.Permission -ne "Denied")) {
		Start-Sleep -Milliseconds 100 # Wait for discovery location.
	}
	if ($GeoWatcher.Permission -eq "Denied") { Write-Error "Access denied for location information" } # Report error.
	else {
		$location = $GeoWatcher.Position.Location # Get Geo-Location parameters.
		$daylight = (Invoke-RestMethod "https://api.sunrise-sunset.org/json?lat=$($location.Latitude)&lng=$($location.Longitude)").Results # Get sunrise and sunset times.
		$Sunrise = ($daylight.Sunrise | Get-Date).ToLocalTime() # Get today's sunrise time.
		$Sunset = ($daylight.Sunset | Get-Date).ToLocalTime() # Get today's sunset time.
		Write-Debug "Current location is $location"
		Write-Debug "Sunrise time: $Sunrise"
		Write-Debug "Sunset time: $Sunset"
	}
	$datetime = Get-Date # Get current time.
	Write-Debug "Current time: $datetime"
	$daylight = $datetime -ge $Sunrise -and $datetime -lt $Sunset
	Write-Debug "Daytime: $daylight"
	return $daylight
}
function ConvertTo-Registry($Value, [string]$Type) {
	<#
		.SYNOPSIS
		Converts data to Windows registry format.
		.DESCRIPTION
		Converts the specified `Value` of the specified `Type` to its Windows registry data format.
		.PARAMETER Value
		The value to convert.
		.PARAMETER Type
		The type of data to convert.
	#>
	switch ($Type) {
		"boolean" {
			if ($Value) {
				return 1
			}
			else {
				return 0
			}
		}
		"color" {
			if ($Value -notmatch "^#[\da-f]{6}$") {
				Write-Error "Invalid color: $Value. Color must be in Hex format. e.g.: #000000."
				exit 1
			}
			$bytes = [BitConverter]::GetBytes([Convert]::ToInt32($Value.Substring(1, 6), 16))
			for ($i = 3; $i -gt 0; $i--) {
				$bytes[$i] = $bytes[$i - 1]
			}
			$bytes[0] = 0
			[Array]::Reverse($bytes)
			return [BitConverter]::ToInt32($bytes, 0)
		}
		"cursor" {
			switch ($Value) {
				"Small" {
					return 0x19
				}
				"Medium" {
					return 0x32
				}
				"Large" {
					return 0x64
				}
				default {
					Write-Warning "Invalid cursor size '$Value'. By default, setting to 'Large'."
					return 0x19
				}
			}
		}
		"size" {
			if ($Value -notmatch "^\d+x\d+$") {
				Write-Error "Invalid size: $Value."
				exit 1
			}
			$size = $Value.Split("x") | ForEach-Object { [BitConverter]::GetBytes([Int16]::Parse($_)) }
			return [BitConverter]::ToInt32(@($size[0], $size[1], $size[2], $size[3]), 0)
		}
		"fgBgColors" {
			$foreground, $background = $Value.Split(",")
			if (!$foreground -or !$background) {
				Write-Error "Invalid foreground or background color: $Value."
				exit 1
			}
			return (Get-ConsoleColorIndex $background) * 16 + (Get-ConsoleColorIndex $foreground)
		}
		"bold" {
			if ($Value) {
				return 700
			}
			else {
				return 400
			}
		}
		"isTrueType" {
			if ($Value) {
				return 54
			}
			else {
				return 0
			}
		}
		default {
			return $Value
		}
	}
}
function Get-ANSIColor($colorMapValue, $name) {
	if ($colorMapValue.Cmd.Index -eq 0) { "`e[$($colorMapValue.ANSI.FG);47m$($name)`e[0m" }
	else { "`e[$($colorMapValue.ANSI.FG)m$($name)`e[0m" }
}
function Get-ConsoleColorIndex($colorName) {
	<#
		.SYNOPSIS
		Gets the console color index.
		.DESCRIPTION
		Gets the console color table index for the specified colorName.
	#>
	$colorName = $colorName.Trim()
	$index = 0
	foreach ($consoleColor in [Enum]::GetValues([ConsoleColor])) {
		if ($consoleColor -eq $colorName) { return $index }
		$index++
	}
	Write-Error "Invalid index color: $colorName."
	exit 1
}
function Get-CurrentProcess {
	<#
		.SYNOPSIS
		Gets the current process.
		.DESCRIPTION
		Gets the current System.Diagnostics.Process instance.
	#>
	Get-Process -Id $pid
}
function Get-FrontEnd {
	<#
		.SYNOPSIS
		Gets the frontend name.
		.DESCRIPTION
		Gets the current process host name.
	#>
	$currentProcess = Get-CurrentProcess
	if ($currentProcess.Parent) { return $currentProcess.Parent.ProcessName }
	return $currentProcess.ProcessName
}
function Install-WingetPackage {
	<#
		.SYNOPSIS
		Checks (and installs if necessary) the specified PackageName.
		.DESCRIPTION
		Checks if the specified PackageName is installed. If not is installed then installs through Windows Package Manager.
		.PARAMETER PackageName
		The name of the package to check or install.
	#>
	[CmdletBinding(SupportsShouldProcess)]
	param ([string]$PackageName)
	if (-not (Get-Command $PackageName -ErrorAction SilentlyContinue)) {
		if (Get-Command winget -ErrorAction SilentlyContinue) {
			if ($PSCmdlet.ShouldProcess("Install $PackageName")) { winget install $PackageName }
			if ($LASTEXITCODE -ne 0) {
				Write-Debug "$PackageName was not installed."
				return $false
			}
			Write-Debug "$PackageName installed."
			return $true
		}
		else {
			Write-Debug "Both $PackageName and winget are not installed."
			Write-Debug "- Download the latest release of Windows Package Manager located at:"
			Write-Debug "https://github.com/microsoft/winget-cli/releases/latest"
			Write-Debug "- Install the package."
			Write-Debug "- Restart the command promt and try again."
		}
	}
	return $false
}
function Set-CommonColor {
	<#
		.SYNOPSIS
		Sets the common console colors to Base16 color scheme.
		.DESCRIPTION
		Sets the PowerShell common console colors accordiong to Base16 (https://github.com/chriskempson/base16) color scheme.
	#>
	[CmdletBinding(SupportsShouldProcess)]
  param()
	if ($Host.PrivateData.DebugBackgroundColor -ne [ConsoleColor]::Black) {
		if ($PSCmdlet.ShouldProcess("DebugBackgroundColor")) {
			$Host.PrivateData.DebugBackgroundColor = [ConsoleColor]::Black # base00 Default backgroud.
			Write-DebugColorUpdate $([ConsoleColor]::Black) "Debug background"
		}
	}
	if ($Host.PrivateData.DebugForegroundColor -ne [ConsoleColor]::DarkGray) {
		if ($PSCmdlet.ShouldProcess("DebugForegroundColor")) {
			$Host.PrivateData.DebugForegroundColor = [ConsoleColor]::DarkGray # base03 Comments, Invisibles, Line Highlighting.
			Write-DebugColorUpdate $([ConsoleColor]::DarkGray) "Debug foreground"
		}
	}
	if ($Host.PrivateData.ErrorBackgroundColor -ne [ConsoleColor]::Black) {
		if ($PSCmdlet.ShouldProcess("ErrorBackgroundColor")) {
			$Host.PrivateData.ErrorBackgroundColor = [ConsoleColor]::Black # base00 Default backgroud.
			Write-DebugColorUpdate $([ConsoleColor]::Black) "Error background"
		}
	}
	if ($Host.PrivateData.ErrorForegroundColor -ne [ConsoleColor]::Red) {
		if ($PSCmdlet.ShouldProcess("ErrorForegroundColor")) {
			$Host.PrivateData.ErrorForegroundColor = [ConsoleColor]::Red # base08 Variables, XML Tags, Markup Link Text, Markup Lists, Diff deleted.
			Write-DebugColorUpdate $([ConsoleColor]::Red) "Error foreground"
		}
	}
	if ($Host.PrivateData.ProgressBackgroundColor -ne [ConsoleColor]::DarkBlue) {
		if ($PSCmdlet.ShouldProcess("ProgressBackgroundColor")) {
			$Host.PrivateData.ProgressBackgroundColor = [ConsoleColor]::DarkBlue # base01 Lighter Background (Used for status bars).
			Write-DebugColorUpdate $([ConsoleColor]::DarkBlue) "Progress background"
		}
	}
	if ($Host.PrivateData.ProgressForegroundColor -ne [ConsoleColor]::White) {
		if ($PSCmdlet.ShouldProcess("ProgressForegroundColor")) {
			$Host.PrivateData.ProgressForegroundColor = [ConsoleColor]::White # base06 Light Foreground (Not often used).
			Write-DebugColorUpdate $([ConsoleColor]::White) "Progress foreground"
		}
	}
	if ($Host.PrivateData.VerboseBackgroundColor -ne [ConsoleColor]::Black) {
		if ($PSCmdlet.ShouldProcess("VerboseBackgroundColor")) {
			$Host.PrivateData.VerboseBackgroundColor = [ConsoleColor]::Black # base00 Default backgroud.
			Write-DebugColorUpdate $([ConsoleColor]::Black) "Verbose background"
		}
	}
	if ($Host.PrivateData.VerboseForegroundColor -ne [ConsoleColor]::DarkGray) {
		if ($PSCmdlet.ShouldProcess("VerboseForegroundColor")) {
			$Host.PrivateData.VerboseForegroundColor = [ConsoleColor]::DarkGray # base03 Comments, Invisibles, Line Highlighting.
			Write-DebugColorUpdate $([ConsoleColor]::DarkGray) "Verbose foreground"
		}
}
	if ($Host.PrivateData.WarningBackgroundColor -ne [ConsoleColor]::Black) {
		if ($PSCmdlet.ShouldProcess("WarningBackgroundColor")) {
			$Host.PrivateData.WarningBackgroundColor = [ConsoleColor]::Black # base00 Default backgroud.
			Write-DebugColorUpdate $([ConsoleColor]::Black) "Warning background"
		}
	}
	if ($Host.PrivateData.WarningForegroundColor -ne [ConsoleColor]::Yellow) {
		if ($PSCmdlet.ShouldProcess("WarningForegroundColor")) {
			$Host.PrivateData.WarningForegroundColor = [ConsoleColor]::Yellow # base0e Keywords, Storage, Selector, Markup Italic, Diff changed.
			Write-DebugColorUpdate $([ConsoleColor]::Yellow) "Warning foreground"
		}
	}
	if ($Host.UI.RawUI.BackgroundColor -ne [ConsoleColor]::Black) {
		if ($PSCmdlet.ShouldProcess("BackgroundColor")) {
			$Host.UI.RawUI.BackgroundColor = [ConsoleColor]::Black # base00 Default backgroud.
			Write-DebugColorUpdate $([ConsoleColor]::Black) "Background"
		}
}
	if ($Host.UI.RawUI.ForegroundColor -ne [ConsoleColor]::Gray) {
		if ($PSCmdlet.ShouldProcess("ForegroundColor")) {
			$Host.UI.RawUI.ForegroundColor = [ConsoleColor]::Gray # base05 Default Foreground, Caret, Delimiters, Operators.
			Write-DebugColorUpdate $([ConsoleColor]::Gray) "Foreground"
		}
	}
}
function Set-ConsoleConfiguration {
	<#
		.SYNOPSIS
		Sets the console settings.
		.DESCRIPTION
		Sets the default console settings for command prompt (cmd.exe), PowerShell (PowerShell.exe), PowerShell Core (pwsh.exe) and Windows Subsystem for Linux (wsl.exe).
		.PARAMETER File
		The file path (or file name without extension under 'Settings' directory) that contains the console settings.
		.PARAMETER ShowInfo
		Shows the console information when starts.
		.EXAMPLE
		Set-ConsoleConfiguration

		Sets the console settings specified in the default configuration file at .\Settings\ConsoleSettings.json.
		.EXAMPLE
		Set-ConsoleConfiguration -File .\Path\To\Settings.json

		Sets the console settings specified in the -File parameter.
		.EXAMPLE
		Set-ConsoleConfiguration -File .\Path\To\Settings.json -ShowInfo

		Sets the console settings specified in the -File parameter and shows info of the current console instance.
		.EXAMPLE
		Set-ConsoleConfiguration -ShowInfo

		Sets the console settings specified in the default configuration file at .\Settings\ConsoleSettings.json and shows info of the current console instance.
	#>
	[CmdletBinding(SupportsShouldProcess)]
	param
	(
		[string]$File = "$PSScriptRoot\Settings\ConsoleSettings.json",
		[switch]$ShowInfo
	)
	if ($Debug) { $DebugPreference = "Continue" } # Write debug if specified.
	Install-WingetPackage gsudo | Out-Null
	# ─── Load settings ──────────────────────────────────────────────────────────────
	if (!(Test-Path $File)) {
		Write-Error "File Settings not found: $File" # Show error
		return
	}
	Write-Debug "Loading '$File' settings..."
	$settings = @{}
	(Get-Content $File | ConvertFrom-Json).PSObject.Properties | ForEach-Object { $settings[$_.Name] = (ConvertTo-Registry $_.Value $Script:TypeMap[$_.Name]) }
	$settings["PROMPT"] = $settings["PROMPT"].Replace("%C", $env:COMPUTERNAME).Replace("%U", $env:USERNAME)
	# ─── Update console properties ───────────────────────────────────
	$consoleRegistryPath = "HKCU:\Console"
	$settings.Keys | ForEach-Object {
		$consolePropertyValue = ((Get-ItemProperty $consoleRegistryPath).$_)
		if ($null -ne $consolePropertyValue -and $consolePropertyValue -ne $settings[$_]) {
			Set-ItemProperty -Path $consoleRegistryPath -Name $_ -Value $settings[$_]
			Write-Debug "'$consoleRegistryPath\$_' value modified to '$($settings[$_])'"
		}
	}
	# ─── Set the CMD prompt ─────────────────────────────────────────────────────────
	if ((Get-ItemProperty "HKCU:\Environment").PROMPT -ne $settings["PROMPT"]) {
		Set-ItemProperty -Path "HKCU:\Environment" -Name "PROMPT" -Value $settings["PROMPT"]
		Write-Debug "CMD Prompt changed to '$($settings["PROMPT"])'."
	}
	if ($null -ne $settings["ColorScheme"]) {
		# ─── Sets auto light mode ────────────────────────────────────────
		if ($null -ne $settings["AutoLightMode"]) {
			if ($settings["AutoLightMode"]) {
				$settings["DayLight"] = Assert-DayLight
				$settings["ColorScheme"] += @("Dark", "Light")[$settings["DayLight"]]
			}
		}
	}
	Set-CommonColor
	Set-PSReadLine $settings["ContinuationPrompt"]
	if (Get-FrontEnd -eq "WindowsTerminal") { Set-WindowsTerminal -ColorScheme $settings["ColorScheme"] -CrtEmulation (-not $settings["DayLight"]) -FontFamily $settings["FaceName"] } # Set Windows Terminal settings.
	if ($null -ne $settings["OhMyPoshConfig"]) { Set-OhMyPosh $settings["OhMyPoshConfig"] } # Set Oh-My-Posh settings.
	Use-Module Terminal-Icons # Load Terminal-Icons module.
	if ($ShowInfo) { Show-ConsoleInfo }
}
function Set-OhMyPosh {
	<#
		.SYNOPSIS
		Sets Oh-My-Posh options.
		.DESCRIPTION
		Sets the Oh-My-Posh module options.
	#>
	[Diagnostics.CodeAnalysis.SuppressMessageAttribute("AvoidUsingInvokeExpression", "", Scope = "Function", Justification = "Invoke-Expression is empty. Is needed to run the third party module. For more information see https://ohmyposh.dev/docs/windows#replace-your-existing-prompt")]
	[CmdletBinding(SupportsShouldProcess)]
	param([string]$Theme)
	$ohMyPoshThemesFolder = Join-Path $env:LOCALAPPDATA "Programs\oh-my-posh\themes"
	# ─── Set Oh-My-Posh prompt ──────────────────────────────────────────────────
	if (Install-WingetPackage oh-my-posh) {
		if ($PSCmdlet.ShouldProcess("Import Oh My Posh themes")) {
			Copy-Item (Join-Path $PSScriptRoot "settings\Oh-My-Posh\*.omp.json") $ohMyPoshThemesFolder
			Write-Debug "Oh-My-Posh settings added."
	}
	}
	if (-not (Test-Path $Theme)) {
		$Theme = Join-Path $ohMyPoshThemesFolder "$Theme.omp.json"
	}
	if (-not (Test-Path $Theme)) {
		Write-Warning "The specified configuration file located at '$Theme' cannot be found."
		oh-my-posh --init --shell pwsh | Invoke-Expression # Iinitalize Oh-My-Posh promt
		Write-Debug "Oh-My-Posh initialized."
		return
	}
	Write-Debug "Oh My Posh theme set to $Theme"
	oh-my-posh --init --shell pwsh --config $Theme | Invoke-Expression # Iinitalize Oh-My-Posh promt
	Enable-PoshTooltips # Enable Oh-My-Posh tooltips
	Write-Debug "Oh-My-Posh initialized."
}
function Set-PSReadLine {
	<#
		.SYNOPSIS
		Sets PSReadLine options.
		.DESCRIPTION
		Sets the `PSReadLine` module options.
	#>
	[CmdletBinding(SupportsShouldProcess)]
	param([string]$ContinuationPrompt)
	if (-Not (Get-Module -ListAvailable -Name PSReadLine) -or (Get-Module -ListAvailable -Name PSReadLine).Version.Major -lt 2) {
		if ($PSCmdlet.ShouldProcess("Install or update PSReadLine")) {
			sudo Install-Module PSReadLine -AllowPrerelease -Force -SkipPublisherCheck
			Write-Debug "'PSReadLine' module installed."
		}
		Import-Module PSReadLine
		Write-Debug "'PSReadLine' module imported."
	}
	$options = Get-PSReadlineOption # Get PSReadLine options
	if ($ContinuationPrompt -and $options.ContinuationPrompt -ne $ContinuationPrompt) {
		$options.ContinuationPrompt = $ContinuationPrompt # Set continuation prompt
		Write-Debug "Continuation prompt set to '$ContinuationPrompt'."
	}
	# ─── Set colors ─────────────────────────────────────────────────────────────────
	if ($options.CommandColor -ne [ConsoleColor]::DarkYellow) {
		$options.CommandColor = [ConsoleColor]::DarkYellow # base0f Deprecated: Opening/Closing Embedded Language Tags (e.g. <?php ?>).
		Write-Debug "Command color set to $($options.CommandColor)$([ConsoleColor]::DarkYellow)"
	}
	if ($options.CommentColor -ne [ConsoleColor]::DarkGray) {
		$options.CommentColor = [ConsoleColor]::DarkGray # base03 Comments, Invisibles, Line Highlighting.
		Write-Debug "Comment color set to $($options.CommentColor)$([ConsoleColor]::DarkGray)"
	}
	if ($options.ContinuationPromptColor -ne [ConsoleColor]::DarkGray) {
		$options.ContinuationPromptColor = [ConsoleColor]::DarkGray # base03 Comments, Invisibles, Line Highlighting.
		Write-Debug "Continuation promt color set to $($options.ContinuationPromptColor)$([ConsoleColor]::DarkGray)"
	}
	if ($options.DefaultTokenColor -ne [ConsoleColor]::White) {
		$options.DefaultTokenColor = [ConsoleColor]::White # base06 Light Foreground (Not often used).
		Write-Debug "Default token color set to $($options.DefaultTokenColor)$([ConsoleColor]::White)"
	}
	if ($options.EmphasisColor -ne [ConsoleColor]::White) {
		$options.EmphasisColor = [ConsoleColor]::White # base06 Light Foreground (Not often used).
		Write-Debug "Emphasis color set to $($options.EmphasisColor)$([ConsoleColor]::White)"
	}
	if ($options.ErrorColor -ne [ConsoleColor]::Red) {
		$options.ErrorColor = [ConsoleColor]::Red # base08 Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted.
		Write-Debug "Error color set to $($options.ErrorColor)$([ConsoleColor]::Red)"
	}
	if ($options.KeywordColor -ne [ConsoleColor]::Yellow) {
		$options.KeywordColor = [ConsoleColor]::Yellow # base0e Keywords, Storage, Selector, Markup Italic, Diff Changed.
		Write-Debug "Keyword color set to $($options.KeywordColor)$([ConsoleColor]::Yellow)"
	}
	if ($options.MemberColor -ne [ConsoleColor]::DarkMagenta) {
		$options.MemberColor = [ConsoleColor]::DarkMagenta # *base0d Functions, Methods, Attribute IDs, Headings. Review
		Write-Debug "Member color set to $($options.MemberColor)$([ConsoleColor]::DarkMagenta)"
	}
	if ($options.NumberColor -ne [ConsoleColor]::Cyan) {
		$options.NumberColor = [ConsoleColor]::Cyan # base09 Integers, Boolean, Constants, XML Attributes, Markup Link Url.
		Write-Debug "Number color set to $($options.NumberColor)$([ConsoleColor]::Cyan)"
	}
	if ($options.OperatorColor -ne [ConsoleColor]::Gray) {
		$options.OperatorColor = [ConsoleColor]::Gray # *base05 Default Foreground, Caret, Delimiters, Operators. Base16 standard, review
		Write-Debug "Operator color set to $($options.OperatorColor)$([ConsoleColor]::Gray)"
	}
	if ($options.ParameterColor -ne [ConsoleColor]::DarkRed) {
		$options.ParameterColor = [ConsoleColor]::DarkRed # *base04 Dark Foreground (Used for status bars). Review
		Write-Debug "Parameter color set to $($options.ParameterColor)$([ConsoleColor]::DarkRed)"
	}
	if ($options.SelectionColor -ne [ConsoleColor]::DarkGreen) {
		$options.SelectionColor = [ConsoleColor]::DarkGreen # base02 Selection Background.
		Write-Debug "Selection color set to $($options.SelectionColor)$([ConsoleColor]::DarkGreen)"
	}
	if ($options.StringColor -ne [ConsoleColor]::Green) {
		$options.StringColor = [ConsoleColor]::Green # base0b Strings, Inherited Class, Markup Code, Diff Inserted.
		Write-Debug "String color set to $($options.StringColor)$([ConsoleColor]::Green)"
	}
	if ($options.TypeColor -ne [ConsoleColor]::Magenta) {
		$options.TypeColor = [ConsoleColor]::Magenta # base0a Classes, Markup Bold, Search Text Background.
		Write-Debug "Type color set to $($options.TypeColor)$([ConsoleColor]::Magenta)"
	}
	if ($options.VariableColor -ne [ConsoleColor]::Red) {
		$options.VariableColor = [ConsoleColor]::Red # base08 Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted.
		Write-Debug "Variable color set to $($options.VariableColor)$([ConsoleColor]::Red)"
	}
}
function Set-WindowsTerminal {
	<#
		.SYNOPSIS
		Sets the Windows Terminal settings.
		.DESCRIPTION
		Sets the color scheme, CRT-Emulation and font family for Windows Terminal.
		.PARAMETER ColorScheme
		The color scheme.
		.PARAMETER CrtEmulation
		A value indicating wheter the CRT emulation is turned on.
		.PARAMETER FontFamily
		The font family.
	#>
	[CmdletBinding(SupportsShouldProcess)]
	param
	(
		[string]$ColorScheme,
		[bool]$CrtEmulation,
		[string]$FontFamily
	)
	# ─── Get profile location ───────────────────────────────────────────────────────
	$wtProfileLocation = "$env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal"
	$process = Get-Process -Id $pid
	if ($null -ne $process.Parent) { $process = $process.Parent }
	if ($process.Path.Contains("Preview")) { $wtProfileLocation += "Preview" }
	$wtProfileLocation += "_8wekyb3d8bbwe\LocalState\settings.json"
	if (-not (Test-Path $wtProfileLocation)) { return } # If settings file don't exists, skip.
	Write-Debug "Opening Windows Terminal settings on '$wtProfileLocation'"
	$wtProfile = Get-Content -Path $wtProfileLocation -Raw # Get profile
	$changed = $false
	$colorSchemePropertyName = '"colorScheme":'
	$colorSchemeProperty = $colorSchemePropertyName + ' "(.*?)"'
	if ($wtProfile -match $colorSchemeProperty -and $Matches[1] -ne $ColorScheme) {
		$wtProfile = $wtProfile -replace $colorSchemeProperty, ($colorSchemePropertyName + ' "' + $ColorScheme + '"')
		$changed = $true
		Write-Debug "Color scheme changed from '$($Matches[1])' to '$ColorScheme'."
	}
	$crtEmulationProperty = '"experimental.retroTerminalEffect": '
	$wrongCrtEmulation = $crtEmulationProperty + $Script:BoolValues[-Not $CrtEmulation]
	if ($wtProfile -match $wrongCrtEmulation) {
		$wtProfile = $wtProfile -replace $wrongCrtEmulation, ($crtEmulationProperty + $Script:BoolValues[$CrtEmulation])
		$changed = $true
		Write-Debug "CRT emulation set to '$crtEmulation'."
	}
	$fontFamilyPropertyName = '"fontFace":'
	$fontFamilyProperty = $fontFamilyPropertyName + ' "(.*?)"'
	if ($wtProfile -match $fontFamilyProperty -and $Matches[1] -ne $FontFamily) {
		$wtProfile = $wtProfile -replace $fontFamilyProperty, ($fontFamilyPropertyName + ' "' + $FontFamily + '"')
		$changed = $true
		Write-Debug "Font changed from '$($Matches[1])' to '$FontFamily'."
	}
	if ($changed) {
		Set-Content -Path $wtProfileLocation -Value $wtProfile
		Write-Debug "Windows Terminal settings saved to '$wtProfileLocation'."
	}
}
function Show-ANSIColor {
	<#
		.SYNOPSIS
		Shows the ANSI colors.
		.DESCRIPTION
		Shows the current 16/256 ANSI colors (16 by default).
		.PARAMETER Full
		Shows the 256 ANSI foreground and backgrond colors.
		.EXAMPLE
		Show-ANSIColor

		Shows the current 16 ANSI colors.
		.EXAMPLE
		Show-ANSIColor -Full

		Shows the current 256 ANSI colors.
	#>
	param([switch]$Full)
	Write-Host
	if ($Full) {
		# ─── Shows the 256 ANSI foreground and backgrond colors ──────────
		foreach ($fgbg in 38, 48) {
			foreach ($color in 0..255) {
				Write-Host -NoNewLine "`e[$fgbg;5;${color}m$($color.ToString().PadLeft(8))`e[0m"
				if (($color + 1) % 6 -eq 4) { Write-Host } # Display 6 colors per line
			}
		}
		Write-Host
		return
	}
	# ─── Shows the current 16 ANSI colors ───────────────────────────────────────────
	Write-Host (" " * 16) -NoNewline
	foreach ($bg in ($Script:ColorMap.GetEnumerator() | Where-Object { [System.Convert]::ToInt32($_.Value.ANSI.BG) -le 47 } | Sort-Object { $_.Value.ANSI.BG })) {
		Write-Host ("{0,-7} " -f "  $($bg.Value.ANSI.BG)m") -NoNewline
	}
	Write-Host
	$example = "  " + [char]::ConvertFromUtf32(0x2022) * 3
	foreach ($fg in ($Script:ColorMap.GetEnumerator() | Sort-Object { $_.Value.ANSI.FG })) {
		Write-Host ("{0,-7}" -f "  $($fg.Value.ANSI.FG)m") -NoNewline
		Write-Host " " -NoNewline
		Write-Host ("{0,-7}" -f $example) -ForegroundColor $fg.Name -NoNewline
		Write-Host " " -NoNewline
		foreach ($bg in ($Script:ColorMap.GetEnumerator() | Where-Object { [System.Convert]::ToInt32($_.Value.ANSI.BG) -le 47 } | Sort-Object { $_.Value.ANSI.BG })) {
			Write-Host ("{0,-7}" -f $example) -BackgroundColor $bg.Name -ForegroundColor $fg.Name -NoNewline
			Write-Host " " -NoNewline
		}
		Write-Host
	}
	Write-Host
}
function Show-ConsoleColor {
	<#
		.SYNOPSIS
		Shows the current console colors.
		.DESCRIPTION
		Shows the current console colors and, optionally, the colors specified to the different tokens.
		.PARAMETER Basic
		A value indicating whether to show the colors of the basic tokens.
		.PARAMETER PsReadLine
		A value indicating whether to show the colors of the PSReadline tokens.
		.EXAMPLE
		Show-ConsoleColor

		Shows the current console colors and the colors specified to all registered tokens.
		.EXAMPLE
		Show-ConsoleColor -Basic

		Shows the current console colors and the colors specified to basic tokens.
		.EXAMPLE
		Show-ConsoleColor -PsReadLine

		Shows the current console colors and the colors specified to PSReadLine tokens.
	#>
	[Diagnostics.CodeAnalysis.SuppressMessageAttribute("AvoidUsingInvokeExpression", "", Scope = "Function", Justification = "")]
	param
	(
		[switch]$Basic,
		[switch]$PsReadLine
	)
	foreach ($color in $Script:ColorMap.GetEnumerator()) { $color.Value.Tokens = @() } # Clears the tokens assigned to the colors in the colorMap variable.
	$all = -not $Basic -and -not $PsReadLine
	if ($all -or $Basic) {
		# ─── Add basic colors ────────────────────────────────────────────
		foreach ($token in ($Host.UI.RawUI | Get-Member *Color -MemberType Property | ForEach-Object { $_.Name -replace "(.+)Color", '$1' })) {
			$color = Invoke-Expression "`$Host.UI.RawUI.$($token)Color.ToString()"
			$Script:ColorMap[$color].Tokens += $token
		}
		foreach ($token in ($Host.PrivateData | Get-Member *Color -MemberType Property | ForEach-Object { $_.Name -replace "(.+)Color", '$1' })) {
			$color = Invoke-Expression "`$Host.PrivateData.$($token)Color.ToString()"
			$Script:ColorMap[$color].Tokens += $token
		}
	}
	if ($all -or $PsReadLine) {
		$PSReadLineModule = Get-Module PSReadLine
		if ($null -ne $PSReadLineModule) {
			$options = Get-PSReadlineOption
			if ($PSReadLineModule.Version.Major -ge 2) {
				foreach ($token in ($options | Get-Member *Color -MemberType Property | ForEach-Object { $_.Name -replace "(.+)Color", '$1' })) {
					$ansiColor = [regex]::Replace((Invoke-Expression "`$options.$($token)Color.ToString()"), ".*\[((?:\d{1,3};?)+)m", '$1')
					$color = ($Script:ColorMap.GetEnumerator() | Where-Object { $_.Value.ANSI.FG -in ($ansiColor -split ";") } | Select-Object -First 1).Key
					$Script:ColorMap[$color].Tokens += $token
				}
			}
			else {
				foreach ($token in ($options | Get-Member *ForegroundColor -MemberType Property | ForEach-Object { $_.Name -replace "(.+)ForegroundColor", "$1" })) {
					$color = Invoke-Expression "`$options.$($token)ForegroundColor.ToString()"
					$Script:ColorMap[$color].Tokens += $token
				}
			}
		}
	}
	$Script:ColorMap.GetEnumerator() | Sort-Object { $_.Value.Cmd.Index } | Format-Table @{
		Label      = "##"
		Expression = { ("`e[0m{0:00}" -f $_.Value.Cmd.Index) }
	},
	@{
		Label      = "PowerShell"
		Expression = { Get-ANSIColor $_.Value $_.Name }
	},
	@{
		Label      = "CMD"
		Expression = { Get-ANSIColor $_.Value $_.Value.Cmd.Name }
	},
	@{
		Label      = "ANSI"
		Expression = { Get-ANSIColor $_.Value $_.Value.ANSI.FG }
	},
	@{
		Label      = "Tokens"
		Expression = { Get-ANSIColor $_.Value $_.Value.Tokens }
	}
}
function Show-ConsoleInfo {
	<#
		.SYNOPSIS
		Shows the current console information.
		.DESCRIPTION
		Shows the current console session details (including OS, frontend and CLI).
	#>
	$regKey = "Registry::HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion"
	Write-Host
	Write-Host "       ,nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn_" -ForegroundColor Blue
	Write-Host "       BBBBBBBMHBBBBBBBBBBBBBBBBBBBBBBBBBH" -ForegroundColor Blue
	Write-Host "      |BBBBBBM   ""HBBBBBBBBBBBBBBBBBBBBBB" -ForegroundColor Blue
	Write-Host "      BBBBBBBBp    ""HBBBBBBBBBBBBBBBBBBB|" -ForegroundColor Blue
	Write-Host "     |BBBBBBBBBHp    ""HBBBBBBBBBBBBBBBBB" -ForegroundColor Blue
	Write-Host "     BBBBBBBBBBBBHp    ""HBBBBBBBBBBBBBB|   " -ForegroundColor Blue -NoNewline
	Write-Host "Device:    " -ForegroundColor DarkYellow -NoNewline
	Write-Host ([System.Environment]::MachineName)
	Write-Host "    |BBBBBBBBBBBBBBHw    ""HBBBBBBBBBBBB    " -ForegroundColor Blue -NoNewline
	Write-Host "$(Get-ItemPropertyValue $regKey ProductName) " -ForegroundColor DarkYellow -NoNewline
	if ([System.Environment]::Is64BitOperatingSystem) {
		$architecture = "64"
	}
	else {
		$architecture = "86"
	}
	Write-Host "$(Get-ItemPropertyValue $regKey DisplayVersion) (x$architecture)"
	Write-Host "    BBBBBBBBBBBBBBBMH´    IBBBBBBBBBBB|    " -ForegroundColor Blue -NoNewline
	Write-Host "User:      " -ForegroundColor DarkYellow -NoNewline
	Write-Host "$([System.Environment]::UserDomainName)\$([System.Environment]::UserName)"
	Write-Host "   |BBBBBBBBBBBBMH´    _pHBBBBBBBBBBBB     " -ForegroundColor Blue -NoNewline
	Write-Host "Frontend:  " -ForegroundColor DarkYellow -NoNewline
	Write-Host $(Get-FrontEnd)
	Write-Host "   BBBBBBBBBBMH´    _pHBBBBBBBBBBBBBB|     " -ForegroundColor Blue -NoNewline
	Write-Host "Interface: " -ForegroundColor DarkYellow -NoNewline
	Write-Host (Get-CurrentProcess).Name (Get-Host).Version
	Write-Host "  |BBBBBBBMH´    _pHBBBBBBBBBBBBBBBBB    " -ForegroundColor Blue
	Write-Host "  BBBBBBM´    _pHBB´         ``BBBBBB|" -ForegroundColor Blue
	Write-Host " |BBBBBB\  _pHBBBBB\_________/BBBBBB" -ForegroundColor Blue
	Write-Host " BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB|" -ForegroundColor Blue
	Write-Host " ``ººººººººººººººººººººººººººººººººº" -ForegroundColor Blue
	Write-Host
}
function Use-Module([string]$ModuleName) {
	<#
		.SYNOPSIS
		Loads the specified module.
		.DESCRIPTION
		Istalls (if not installed) and imports the specified module.
		.PARAMETER ModuleName
		The module name to load.
	#>
	if (-Not (Get-Module -ListAvailable -Name $ModuleName)) {
		sudo Install-Module $ModuleName
		Write-Debug "Module $ModuleName installed."
	} # Install module
	Import-Module $ModuleName # Import module
	Write-Debug "Module $ModuleName imported."
}
function Write-DebugColorUpdate($colorName, [string]$description) {
	Write-Debug "$description color set to $(Get-ANSIColor $ColorMap["$colorName"] $colorName)."
}