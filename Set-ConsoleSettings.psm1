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
$Script:FontName = "" # Font name
# ─── Maps console registry setting types ──────────────────────────────────────
$Script:TypeMap = @{
	"CursorSize" = "cursor" # Specifies the percentage of a character cell that is occupied by the cursor. This setting affects the default window. Values: Small (25%), Medium (50%) or Large (100%).
	"FaceName" = "string" # Specifies the name of an alternate command window font. If there is no font name in the value of this entry, the system uses raster fonts.
	"FontFamily" = "font_type" # Specifies whether the font is True Type.
	"FontSize" = "dim" # Specifies the size of the font in pixels.
	"FontWeight" = "font_bold" # Specifies whether the font is bold.
	"FullScreen" = "bool" # Determines whether the console is set to open in full-screen mode.
	"HistoryBufferSize" = "int" # Specifies the number of commands that can be stored in each command history buffer.
	"HistoryNoDup" = "bool" # Specifies whether to remove duplicates in the history buffer.
	"InsertMode" = "bool" # Determines how the system behaves when the user types over existing characters.
	"LoadConIme" = "bool" # Determines whether or not the IME proxy process for the Windows 2000 console (Conime.exe) is loaded automatically when you log on to Windows 2000.
	"NumberOfHistoryBuffers" = "int" # Specifies the number of history buffers allocated to store commands.
	"PopupColors" = "fg_bg" # Specifies both foreground and background colors used in popup windows by color name.
	"QuickEdit" = "bool" # Determines whether QuickEdit mode is enabled. In QuickEdit mode, users can cut and paste text by using the mouse.
	"ScreenBufferSize" = "dim" # Determines the size of the screen buffer (the screen that is retained in memory). If the size of the screen displayed on the monitor is smaller than the screen buffer, you can scroll to see the entire screen. You cannot display a console screen that is larger than the screen buffer.
	"ScreenColors" = "fg_bg" # Specifies both foreground and background colors used in the console by color name.
	"WindowAlpha" = "int" # Determines the opacity of the console window (where 0 is transparent and 255 is opaque).
	"WindowPosition" = "dim" # Specifies the position of the command window on the user's screen.
	"WindowSize" = "dim" # Specifies the size of the command window (in columns and rows).
}
# ─── Adds the type for each console color registry property ───────────────────
$index = 0
[Enum]::GetValues([ConsoleColor]) | ForEach-Object { $Script:TypeMap.Add("ColorTable$(($index++).ToString('00'))", "color") }
function Add-BasicColors
{
	<#
		.SYNOPSIS
		Adds token colors.
		.DESCRIPTION
		Adds PowerShell token colors to color map.
	#>
	foreach ($token in ($Host.UI.RawUI | Get-Member -MemberType Property -Name *Color | ForEach-Object { $_.Name -replace "(.+)Color", '$1' })) {
		$color = Invoke-Expression "`$Host.UI.RawUI.$($token)Color.ToString()"
		$Script:ColorMap[$color].Tokens += $token
	}
	foreach ($token in ($Host.PrivateData | Get-Member -MemberType Property -Name *Color | ForEach-Object { $_.Name -replace "(.+)Color", '$1' })) {
		$color = Invoke-Expression "`$Host.PrivateData.$($token)Color.ToString()"
		$Script:ColorMap[$color].Tokens += $token
	}
}
function Add-PSReadLineColors
{
	<#
		.SYNOPSIS
		Adds PSReadLine colors.
		.DESCRIPTION
		Adds PSReadLine module token colors to color map.
	#>
	if ($PSReadline = Get-Module PSReadLine)
	{
		$options = Get-PSReadlineOption
		if ($PSReadline.Version.Major -ge 2)
		{
			foreach ($token in ($options | Get-Member -MemberType Property -Name *Color | ForEach-Object { $_.Name -replace "(.+)Color", '$1' }))
			{
				$ansiColor = [regex]::Replace((Invoke-Expression "`$options.$($token)Color.ToString()"), ".*\[((?:\d{1,3};?)+)m", '$1')
				$color = ($Script:ColorMap.GetEnumerator() | Where-Object { $_.Value.ANSI.FG -in ($ansiColor -split ";") } | Select-Object -First 1).Key
				$Script:ColorMap[$color].Tokens += $token
			}
		}
		else
		{
			foreach ($token in ($options | Get-Member -MemberType Property -Name *ForegroundColor | ForEach-Object { $_.Name -replace "(.+)ForegroundColor", "$1" }))
			{
				$color = Invoke-Expression "`$options.$($token)ForegroundColor.ToString()"
				$Script:ColorMap[$color].Tokens += $token
			}
		}
	}
}
function Clear-Tokens
{
	<#
		.SYNOPSIS
		Clears the token color map.
		.DESCRIPTION
		Clears the tokens assigned to the colors in the colorMap variable.
	#>
	foreach($color in $Script:ColorMap.GetEnumerator())
	{
		$color.Value.Tokens = @()
	}
}
function Encode($value, $type)
{
	<#
		.SYNOPSIS
		Encodes a value to the specified type.
		.DESCRIPTION
		Encodes the specified value to the specified type.
	#>
	switch($type)
	{
		"bool"
		{
			if ($value)
			{
				return 1
			}
			else
			{
				return 0
			}
		}
		"color"
		{
			if ($value -notmatch "^#[\da-f]{6}$")
			{
				Write-Error "Invalid color: $value. Color must be in Hex format. e.g.: #000000."
				exit 1
			}
			$bytes = [BitConverter]::GetBytes([Convert]::ToInt32($value.Substring(1,6), 16))
			for ($i = 3; $i -gt 0; $i--)
			{
				$bytes[$i] = $bytes[$i - 1]
			}
			$bytes[0] = 0
			[Array]::Reverse($bytes)
			return [BitConverter]::ToInt32($bytes, 0)
		}
		"cursor"
		{
			switch($value)
			{
				"Small"
				{
					return 0x19
				}
				"Medium"
				{
					return 0x32
				}
				"Large"
				{
					return 0x64
				}
				default
				{
					Write-Warning "Invalid cursor_size '$value'. By default, setting to 'Large'."
					return 0x19
				}
			}
		}
		"dim"
		{
			if ($value -notmatch "^\d+x\d+$")
			{
				Write-Error "Invalid dimensions: $value."
				exit 1
			}
			$dim = $value.Split("x") | ForEach-Object { [BitConverter]::GetBytes([Int16]::Parse($_)) }
			return [BitConverter]::ToInt32(@($dim[0], $dim[1], $dim[2], $dim[3]), 0)
		}
		"fg_bg"
		{
			$foreground, $background = $value.Split(",")
			if (!$foreground -or !$background)
			{
				Write-Error "Invalid foreground or background color: $value."
				exit 1
			}
			return (Get-ConsoleColorIndex $background) * 16 + (Get-ConsoleColorIndex $foreground) 
		}
		"font_bold"
		{
			if ($value)
			{
				return 700
			}
			else
			{
				return 400
			}
		}
		"font_type"
		{
			if ($value)
			{
				return 54
			}
			else
			{
				return 0
			}
		}
		default
		{
			return $value
		}
	}
}
function Enter-Elevated([scriptblock]$Script)
{
	<#
		.SYNOPSIS
		Executes the specified script with elevated privileges.
		.DESCRIPTION
		Enters in administrator session (if needed) and executes the specified script.
		.PARAMETER script
		The script block to execute.
	#>
	# ─── If not currently running as administrator ──────────────────────────────
	if (-Not ([System.Security.Principal.WindowsPrincipal] [System.Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([System.Security.Principal.WindowsBuiltInRole]::Administrator))
	{
		Write-Debug "Invoking elevated access script..."
		Start-Process PowerShell.exe -Verb RunAs -ArgumentList "-NonInteractive -ScriptBlock { $Script }" # Run script as administrator
	}
	else
	{
		Invoke-Command -ScriptBlock $Script
	}
}
function Get-ANSIColor($colorMapValue, $name)
{
	if ($colorMapValue.Cmd.Index -eq 0)
	{
		"$e[$($colorMapValue.ANSI.FG);47m$($name)$e[0m"
	}
	else
	{
		"$e[$($colorMapValue.ANSI.FG)m$($name)$e[0m"
	}
}
function Get-ConsoleColorIndex($colorName)
{
	<#
		.SYNOPSIS
		Gets the console color index.
		.DESCRIPTION
		Gets the console color table index for the specified colorName.
	#>
	$index = 0
	foreach ($consoleColor in [Enum]::GetValues([ConsoleColor]))
	{
		if ($consoleColor -eq $colorName)
		{
			return $index
		}
		$index++
	}
	Write-Error "Invalid index color: $colorName."
	exit 1
}
function Get-CurrentProcess
{
	<#
		.SYNOPSIS
		Gets the current process.
		.DESCRIPTION
		Gets the current System.Diagnostics.Process instance.
	#>
	Get-Process -Id $pid
}
function Get-FrontEnd
{
	<#
		.SYNOPSIS
		Gets the frontend name.
		.DESCRIPTION
		Gets the current process host name.
	#>
	$currentProcess = Get-CurrentProcess
	if ($currentProcess.Parent)
	{
		return $currentProcess.Parent.ProcessName
	}
	return $currentProcess.ProcessName
}
function Get-Daytime
{
	<#
		.SYNOPSIS
		Indicates whether is daytimes.
		.DESCRIPTION
		Gets a value indicating whether currently is daytime or nighttime.
	#>
	# ────────────────────────────────────────── Set default daylight values ─────
	$sunrise = ("8:00" | Get-Date) # Set default sunrise time.
	$sunset = ("19:30" | Get-Date) # Set default sunset time.
	# ───────────────────────────────────────────────────── Get Geo-Location ─────
	Write-Debug "Retrieving location..."
	Add-Type -AssemblyName System.Device # Required to access System.Device.Location namespace.
	$GeoWatcher = New-Object System.Device.Location.GeoCoordinateWatcher #Create the required object.
	$GeoWatcher.Start() # Begin resolving current locaton.
	while (($GeoWatcher.Status -ne "Ready") -and ($GeoWatcher.Permission -ne "Denied"))
	{
		Start-Sleep -Milliseconds 100 # Wait for discovery location.
	}
	if ($GeoWatcher.Permission -eq "Denied")
	{
		Write-Error "Access denied for location information" # Report error
	}
	else
	{
		# ─────────────────────────────────────────────────────── Get location ─────
		$location = $GeoWatcher.Position.Location
		$daytime = (Invoke-RestMethod "https://api.sunrise-sunset.org/json?lat=$($location.Latitude)&lng=$($location.Longitude)").Results # Get sunrise and sunset times
		# ────────────────────────────────────────────── Convert to local time ─────
		$sunrise = ($daytime.Sunrise | Get-Date).ToLocalTime()
		$sunset = ($daytime.Sunset | Get-Date).ToLocalTime()
		Write-Debug "Current location is $location"
		Write-Debug "Sunrise time: $sunrise"
		Write-Debug "Sunset time: $sunset"
	}
	$datetime = Get-Date # Get current time
	Write-Debug "Current time: $datetime"
	$daytime = $datetime -ge $sunrise -and $datetime -lt $sunset
	Write-Debug "Daytime: $daytime"
	return $daytime
}
function Import-ConsoleSettings
{
	<#
		.SYNOPSIS
		Imports the specified console settings.
		.DESCRIPTION
		Imports the console settings contained in the specified JSON file path.
		.PARAMETER files
		The file paths or file names (under 'Settings' directory, with .json extension) that contains the console settings.
	#>
	param
	(
		# The file paths or file names (under 'Settings' directory, with .json extension).
		[Parameter(Mandatory = $true)]
		[string[]]$files
	)
	foreach ($file in $files)
	{
		Write-Debug "Loading $file settings..."
		if (!(Test-Path $file))
		{
			$file = Resolve-Path "$PSScriptRoot\Settings\$file.json" # Find in local settings directory
			if (!(Test-Path $file))
			{
				Write-Error "File Settings not found: $file" # Show error
				return
			}
			# ─── Get console settings ───────────────────────────────────────────────
			$encoded = @{}
			(Get-Content $file | ConvertFrom-Json).PSObject.Properties | ForEach-Object { $encoded[$_.Name] = (Encode $_.Value $Script:TypeMap[$_.Name]) }
			# ─── Set console settings ───────────────────────────────────────────────
			$consoleRegistryPath = "HKCU:\Console"
			if (!(Test-Path $consoleRegistryPath))
			{
				New-Item $consoleRegistryPath | Out-Null # Create console registry key
				Write-Debug "$consoleRegistryPath key created."
			}
			# ──────────────────────────────────────── Update console properties ─────
			$encoded.Keys | ForEach-Object {
				if (((Get-ItemProperty -Path $consoleRegistryPath).$_) -ne $encoded[$_])
				{
					Set-ItemProperty -Path $consoleRegistryPath -Name $_ -Value $encoded[$_]
					Write-Debug "$consoleRegistryPath\\$_ value modified to $($encoded[$_])"
				}
			}
			if ($null -ne $encoded['FaceName'])
			{
				$Script:FontName = $encoded['FaceName']
			}
		}
	}
}
function Set-CmdPrompt
{
	<#
		.SYNOPSIS
		Sets the CMD prompt.
		.DESCRIPTION
		Sets the CMD promt to "Host > Path > ".
	#>
	$environmentPath = "HKCU:\Environment"
	$prompt = "PROMPT"
	$promptValue = "`$E[0;30;41m " + $env:ComputerName + " `$E[31;42m `$P `$E[0;32m`$E[1;30m "
	if ((Get-ItemProperty -Path $environmentPath -Name $prompt).PROMPT -ne $promptValue)
	{
		Set-ItemProperty -Path "HKCU:\Environment" -Name $prompt -Value $promptValue # Set CMD prompt
		Write-Debug "CMD Prompt changed."
	}
}
function Set-CommonColors
{
	<#
		.SYNOPSIS
		Sets the common console colors.
		.DESCRIPTION
		Sets the PowerShell common console colors accordiong to Base16 (https://github.com/chriskempson/base16) color scheme.
	#>
	$Host.PrivateData.DebugBackgroundColor = [ConsoleColor]::Black # base00 Default backgroud.
	$Host.PrivateData.DebugForegroundColor = [ConsoleColor]::DarkGray # base03 Comments, Invisibles, Line Highlighting.
	$Host.PrivateData.ErrorBackgroundColor = [ConsoleColor]::Black # base00 Default backgroud.
	$Host.PrivateData.ErrorForegroundColor = [ConsoleColor]::Red # base08 Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted.
	$Host.PrivateData.ProgressBackgroundColor = [ConsoleColor]::DarkBlue # base01 Lighter Background (Used for status bars).
	$Host.PrivateData.ProgressForegroundColor = [ConsoleColor]::White # base06 Light Foreground (Not often used).
	$Host.PrivateData.VerboseBackgroundColor = [ConsoleColor]::Black # base00 Default backgroud.
	$Host.PrivateData.VerboseForegroundColor = [ConsoleColor]::DarkGray # base03 Comments, Invisibles, Line Highlighting.
	$Host.PrivateData.WarningBackgroundColor = [ConsoleColor]::Black # base00 Default backgroud.
	$Host.PrivateData.WarningForegroundColor = [ConsoleColor]::Yellow # base0e Keywords, Storage, Selector, Markup Italic, Diff Changed.
	$Host.UI.RawUI.BackgroundColor = [ConsoleColor]::Black # base00 Default backgroud.
	$Host.UI.RawUI.ForegroundColor = [ConsoleColor]::Gray # base05 Default Foreground, Caret, Delimiters, Operators.
	Write-Debug "Set common tokens according to $ColorScheme color scheme."
}
function Set-ConsoleSettings
{
	<#
		.SYNOPSIS
		Sets the console settings.
		.DESCRIPTION
		Sets the default console settings for command prompt (cmd.exe), PowerShell (PowerShell.exe), PowerShell Core (pwsh.exe) and Windows Subsystem for Linux (wsl.exe).
		.PARAMETER ColorScheme
		The color scheme to set.
		.PARAMETER Auto
		A value indicating whether the light/dark mode is dinamically set. This adds a Dark/Light suffix to the color scheme name.
		.PARAMETER ShowInfo
		Shows the console information when starts.
		.PARAMETER Debug
		Shows debug messages.
	#>
	param
	(
		[string]$ColorScheme = "Default",
		[bool]$Auto = $true,
		[switch]$ShowInfo,
		[switch]$Debug
	)
	if ($Debug) { $DebugPreference = 'Continue' } # Write debug if specified.
	Set-CmdPrompt # Set CMD prompt.
	if ($Auto -and $ColorScheme -ne "Default")
	{
		# ─── Set light or dark color scheme ───────────────────────────────────────
		$daytime = Get-Daytime
		$ColorScheme += @("Dark", "Light")[$daytime]
	}
	Import-ConsoleSettings "Common", $ColorScheme # Import console settings.
	$consoleHost = Get-FrontEnd # Get the frontend name.
	if ($consoleHost -eq "WindowsTerminal")
	{
		Set-WindowsTerminal $ColorScheme (!$daytime) $Script:FontName # Set Windows Terminal settings.
	}
	Set-CommonColors # Set PowerShell console common colors.
	Set-PSReadLine # Set PSReadLine settings.
	Set-OhMyPosh # Set Oh-My-Posh settings.
	Set-GetChildItemColor # Get-ChildItemColor settings.
	if ($ShowInfo) { Show-ConsoleInfo }
}
function Set-GetChildItemColor
{
	<#
		.SYNOPSIS
		Sets Get-ChildItemColor options.
		.DESCRIPTION
		Sets the Get-ChildItemColor module options.
	#>
	if (-Not (Get-Module -ListAvailable -Name Get-ChildItemColor))
	{
		Enter-Elevated { Install-Module -AllowClobber Get-ChildItemColor }
	}
	Import-Module Get-ChildItemColor
	Write-Debug "Get-ChildItemColor module imported."
	$GetChildItemColorTable.File["Directory"] = [ConsoleColor]::DarkGray
	foreach ($type in $GetChildItemColorExtensions.CompressedList)
	{
		$GetChildItemColorTable.File[$type] = [ConsoleColor]::Yellow
	}
	foreach ($type in $GetChildItemColorExtensions.ConfigsList)
	{
		$GetChildItemColorTable.File[$type] = [ConsoleColor]::Green
	}
	foreach ($type in $GetChildItemColorExtensions.DllPdbList)
	{
		$GetChildItemColorTable.File[$type] = [ConsoleColor]::Magenta
	}
	foreach ($type in $GetChildItemColorExtensions.ExecutableList)
	{
		$GetChildItemColorTable.File[$type] = [ConsoleColor]::DarkYellow
	}
	foreach ($type in $GetChildItemColorExtensions.SourceCodeList)
	{
		$GetChildItemColorTable.File[$type] = [ConsoleColor]::Blue
	}
	foreach ($type in $GetChildItemColorExtensions.TextList)
	{
		$GetChildItemColorTable.File[$type] = [ConsoleColor]::Cyan
	}
	Write-Debug "Get-ChildItemColor module configured."
}
function Set-OhMyPosh
{
	<#
		.SYNOPSIS
		Sets Oh-My-Posh options.
		.DESCRIPTION
		Sets the Oh-My-Posh module options.
	#>
	# ─── Set Oh-My-Posh prompt ──────────────────────────────────────────────────
	if (-not (Get-Command oh-my-posh -ErrorAction SilentlyContinue).Path)
	{
		if ((Get-Command winget -ErrorAction SilentlyContinue).Path)
		{
			winget install oh-my-posh
			Write-Debug "Oh-My-Posh installed."
			Copy-Item (Join-Path $PSScriptRoot "settings\Oh-My-Posh")
			Write-Debug "Oh-My-Posh settings added."
		}
	}
	oh-my-posh --init --shell pwsh --config (Join-Path $env:LOCALAPPDATA "Programs\oh-my-posh\themes\Luigitech.omp.json") | Invoke-Expression # Iinitalize Oh-My-Posh promt
	Enable-PoshTooltips # Enable Oh-My-Posh tooltips
	Write-Debug "Oh-My-Posh initialized."
}
function Set-PSReadLine
{
	<#
		.SYNOPSIS
		Sets PSReadLine options.
		.DESCRIPTION
		Sets the PSReadLine module options.
	#>
	if (-Not (Get-Module -ListAvailable -Name PSReadLine) -or (Get-Module -ListAvailable -Name PSReadLine).Version.Major -lt 2)
	{
		Enter-Elevated
		{
			Install-Module PSReadLine -AllowPrerelease -Force -SkipPublisherCheck
			Write-Debug "PSReadLine module installed."
		}
		Import-Module PSReadLine
		Write-Debug "PSReadLine module imported."
	}
	$options = Get-PSReadlineOption # Get PSReadLine options
	# ─────────────────────────────────────────────────── Set Prompt options ─────
	$options.ContinuationPrompt = "->"
	# ─────────────────────────────────────────────────────────── Set colors ─────
	$options.CommandColor = [ConsoleColor]::DarkYellow # *base0f Deprecated: Opening/Closing Embedded Language Tags (e.g. <?php ?>). Inconsistent
	$options.CommentColor = [ConsoleColor]::DarkGray # base03 Comments, Invisibles, Line Highlighting.
	$options.ContinuationPromptColor = [ConsoleColor]::DarkGray # base03 Comments, Invisibles, Line Highlighting.
	$options.DefaultTokenColor = [ConsoleColor]::White # base06 Light Foreground (Not often used).
	$options.EmphasisColor = [ConsoleColor]::White # base06 Light Foreground (Not often used).
	$options.ErrorColor = [ConsoleColor]::Red # base08 Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted.
	$options.KeywordColor = [ConsoleColor]::Yellow # base0e Keywords, Storage, Selector, Markup Italic, Diff Changed.
	$options.MemberColor = [ConsoleColor]::DarkMagenta # *base0d Functions, Methods, Attribute IDs, Headings. Review
	$options.NumberColor = [ConsoleColor]::Cyan # base09 Integers, Boolean, Constants, XML Attributes, Markup Link Url.
	$options.OperatorColor = [ConsoleColor]::Gray # *base05 Default Foreground, Caret, Delimiters, Operators. Base16 standard, review
	$options.ParameterColor = [ConsoleColor]::DarkRed # *base04 Dark Foreground (Used for status bars). Review
	$options.SelectionColor = [ConsoleColor]::DarkGreen # base02 Selection Background.
	$options.StringColor = [ConsoleColor]::Green # base0b Strings, Inherited Class, Markup Code, Diff Inserted.
	$options.TypeColor = [ConsoleColor]::Magenta # base0a Classes, Markup Bold, Search Text Background.
	$options.VariableColor = [ConsoleColor]::Red # base08 Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted.
	Write-Debug "Set PSReadLine tokens according to $ColorScheme color scheme."
}
function Set-WindowsTerminal
{
	<#
		.SYNOPSIS
		Sets the Windows Terminal settings.
		.DESCRIPTION
		Sets the color scheme, CRT-Emulation and font for Windows Terminal.
		.PARAMETER ColorScheme
		The color scheme.
		.PARAMETER CrtEmulation
		A value indicating wheter the CRT emulation is turned on.
	#>
	param
	(
		[string]$ColorScheme,
		[bool]$CrtEmulation
	)
	if ((Get-Process -Id (Get-Process -Id $pid).Parent.Id).Path.Contains("Preview"))
	{
		$wtProfileLocation = "Preview"
	}
	$wtProfileLocation = "Microsoft.WindowsTerminal" + $wtProfileLocation + "_8wekyb3d8bbwe"
	$wtProfileLocation = Join-Path $env:LOCALAPPDATA "Packages" $wtProfileLocation "LocalState" "settings.json" # Get profile location.
	if (Test-Path $wtProfileLocation)
	{
		Write-Debug "Opening Windows Terminal settings at $wtProfileLocation"
		$wtProfile = Get-Content -Path $wtProfileLocation -Raw # Get profile
		$changed = $false
		$colorSchemePropertyName = '"colorScheme":'
		$colorSchemeProperty = $colorSchemePropertyName + ' "(.*?)"'
		if ($wtProfile -match $colorSchemeProperty -and $Matches[1] -ne $ColorScheme)
		{
			$wtProfile = $wtProfile -replace $colorSchemeProperty, ($colorSchemePropertyName + ' "' + $ColorScheme + '"')
			$changed = $true
			Write-Debug "Color scheme changed from $($Matches[1]) to $ColorScheme."
		}
		$crtEmulationProperty = '"experimental.retroTerminalEffect": '
		$wrongCrtEmulation = $crtEmulationProperty + $Script:BoolValues[-Not $CrtEmulation]
		if ($wtProfile -match $wrongCrtEmulation)
		{
			$wtProfile = $wtProfile -replace $wrongCrtEmulation, ($crtEmulationProperty + $Script:BoolValues[$CrtEmulation])
			$changed = $true
			Write-Debug "CRT emulation set to $crtEmulation."
		}
		$fontFamilyPropertyName = '"fontFace":'
		$fontFamilyProperty = $fontFamilyPropertyName + ' "(.*?)"'
		if ($wtProfile -match $fontFamilyProperty -and $Matches[1] -ne $Script:FontName)
		{
			$wtProfile = $wtProfile -replace $fontFamilyProperty, ($fontFamilyPropertyName + ' "' + $Script:FontName + '"')
			$changed = $true
			Write-Debug "Font changed from $($Matches[1]) to $Script:FontName."
		}
		if ($changed)
		{
			Set-Content -Path $wtProfileLocation -Value $wtProfile
		}
	}
}
function Show-ANSIColors
{
	<#
		.SYNOPSIS
		Shows the ANSI colors.
		.DESCRIPTION
		Shows the current ANSI colors.
	#>
	Write-Host (" " * 16) -NoNewline
	foreach ($bg in ($Script:ColorMap.GetEnumerator() | Where-Object { [System.Convert]::ToInt32($_.Value.ANSI.BG) -le 47 } | Sort-Object { $_.Value.ANSI.BG }))
	{
		Write-Host ("{0,-7} " -f "  $($bg.Value.ANSI.BG)m") -NoNewline
	}
	Write-Host
	$example = "  " + [char]::ConvertFromUtf32(0x2022) * 3
	foreach ($fg in ($Script:ColorMap.GetEnumerator() | Sort-Object { $_.Value.ANSI.FG }))
	{
		Write-Host ("{0,7} " -f "$($fg.Value.ANSI.FG)m ", $example) -NoNewline
		Write-Host ("{0,-7} " -f $example) -ForegroundColor $fg.Name -NoNewline
		foreach ($bg in ($Script:ColorMap.GetEnumerator() | Where-Object { [System.Convert]::ToInt32($_.Value.ANSI.BG) -le 47 } | Sort-Object { $_.Value.ANSI.BG }))
		{
			Write-Host ("{0,-7}" -f $example) -BackgroundColor $bg.Name -ForegroundColor $fg.Name -NoNewline
			Write-Host " " -NoNewline
		}
		Write-Host
	}
	Write-Host "`n"
}
function Show-ConsoleColors([switch]$Basic, [switch]$PsReadLine)
{
	<#
		.SYNOPSIS
		Shows the current console colors.
		.DESCRIPTION
		Shows the current console colors and, optionally, the colors specified to the different tokens.
		.PARAMETER basic
		A value indicating whether to show the colors of the basic tokens.
		.PARAMETER PsReadLine
		A value indicating whether to show the colors of the PSReadline tokens.
	#>
	Clear-Tokens
	$all = -not $Basic -and -not $PsReadLine
	if ($all -or $Basic) { Add-BasicColors }
	if ($all -or $PsReadLine) { Add-PSReadLineColors }
	$e = [char]27
	$Script:ColorMap.GetEnumerator() | Sort-Object { $_.Value.Cmd.Index } | Format-Table @{
			Label = "##"
			Expression = { ("$e[0m{0:00}" -f $_.Value.Cmd.Index) }
		},
		@{
			Label = "PowerShell"
			Expression = { Get-ANSIColor $_.Value $_.Name }
		},
		@{
			Label = "CMD"
			Expression = { Get-ANSIColor $_.Value $_.Value.Cmd.Name }
		},
		@{
			Label = "ANSI"
			Expression = { Get-ANSIColor $_.Value $_.Value.ANSI.FG }
		},
		@{
			Label = "Tokens"
			Expression = { Get-ANSIColor $_.Value $_.Value.Tokens }
		}
}
function Show-ConsoleInfo
{
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
	if ([System.Environment]::Is64BitOperatingSystem)
	{
		$architecture = "64"
	}
	else
	{
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
function Use-Module([string]$Module)
{
	<#
		.SYNOPSIS
		Loads the specified module.
		.DESCRIPTION
		Istalls (if not installed) and imports the specified module.
		.PARAMETER Module
		The module name to load.
	#>
	# ─── Install module ─────────────────────────────────────────────────────────────
	if (-Not (Get-Module -ListAvailable -Name $Module))
	{
		Enter-Elevated
		{
			Install-Module $Module
		}
	}
	# ─── Import module ──────────────────────────────────────────────────────────────
	Import-Module $Module
}