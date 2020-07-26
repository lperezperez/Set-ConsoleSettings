# ─── BOOLEAN STRINGS ────────────────────────────────────────────────────────────
$Script:BoolValues = @("true", "false")
# ─── COLOR MAP ──────────────────────────────────────────────────────────────────
$Script:ColorMap = @{
    "Black" = @{
        "ANSI" = @{
            "Name" = "Black"
            "FG"   = "30"
            "BG"   = "40"
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
            "FG"   = "34"
            "BG"   = "44"
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
            "FG"   = "32"
            "BG"   = "42"
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
            "FG"   = "36"
            "BG"   = "46"
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
            "FG"   = "31"
            "BG"   = "41"
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
            "FG"   = "35"
            "BG"   = "45"
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
            "FG"   = "33"
            "BG"   = "43"
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
            "FG"   = "37"
            "BG"   = "47"
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
            "FG"   = "90"
            "BG"   = "100"
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
            "FG"   = "94"
            "BG"   = "104"
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
            "FG"   = "92"
            "BG"   = "102"
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
            "FG"   = "96"
            "BG"   = "106"
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
            "FG"   = "91"
            "BG"   = "101"
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
            "FG"   = "95"
            "BG"   = "105"
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
            "FG"   = "93"
            "BG"   = "103"
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
            "FG"   = "97"
            "BG"   = "107"
        }
        "Cmd" = @{
            "Name" = "Bright White"
            "Index" = 15
        }
        "Tokens" = @()
    }
}
# ─── MAPS CONSOLE REGISTRY SETTING TYPES ────────────────────────────────────────
$Script:TypeMap = @{
    "CursorSize"             = "cursor"    # Specifies the percentage of a character cell that is occupied by the cursor. This setting affects the default window. Values: Small (25%), Medium (50%) or Large (100%).
    "FaceName"               = "string"    # Specifies the name of an alternate command window font. If there is no font name in the value of this entry, the system uses raster fonts.
    "FontFamily"             = "font_type" # Specifies whether the font is True Type.
    "FontSize"               = "dim"       # Specifies the size of the font in pixels.
    "FontWeight"             = "font_bold" # Specifies whether the font is bold.
    "FullScreen"             = "bool"      # Determines whether the console is set to open in full-screen mode.
    "HistoryBufferSize"      = "int"       # Specifies the number of commands that can be stored in each command history buffer.
    "HistoryNoDup"           = "bool"      # Specifies whether to remove duplicates in the history buffer.
    "InsertMode"             = "bool"      # Determines how the system behaves when the user types over existing characters.
    "LoadConIme"             = "bool"      # Determines whether or not the IME proxy process for the Windows 2000 console (Conime.exe) is loaded automatically when you log on to Windows 2000.
    "NumberOfHistoryBuffers" = "int"       # Specifies the number of history buffers allocated to store commands.
    "PopupColors"            = "fg_bg"     # Specifies both foreground and background colors used in popup windows by color name.
    "QuickEdit"              = "bool"      # Determines whether QuickEdit mode is enabled. In QuickEdit mode, users can cut and paste text by using the mouse.
    "ScreenBufferSize"       = "dim"       # Determines the size of the screen buffer (the screen that is retained in memory). If the size of the screen displayed on the monitor is smaller than the screen buffer, you can scroll to see the entire screen. You cannot display a console screen that is larger than the screen buffer.
    "ScreenColors"           = "fg_bg"     # Specifies both foreground and background colors used in the console by color name.
    "WindowAlpha"            = "int"       # Determines the opacity of the console window (where 0 is transparent and 255 is opaque).
    "WindowPosition"         = "dim"       # Specifies the position of the command window on the user's screen.
    "WindowSize"             = "dim"       # Specifies the size of the command window (in columns and rows).
}
# ─── ADDS THE TYPE FOR EACH CONSOLE COLOR REGISTRY PROPERTY ─────────────────────
$index = 0
[Enum]::GetValues([ConsoleColor]) | ForEach-Object { $Script:TypeMap.Add("ColorTable$(($index++).ToString('00'))", "color") }
function Add-BasicColors {
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
function Add-OhMyPoshColors {
    <#
        .SYNOPSIS
        Adds Oh-My-Posh colors.
        .DESCRIPTION
        Adds Oh-My-Posh module token colors to color map.
    #>
    if (Get-Module Oh-My-Posh) {
        foreach ($token in ($ThemeSettings.Colors.GetEnumerator() | ForEach-Object { $_.Name -replace "(.+)Color", '$1' })) {
            $color = Invoke-Expression "`$ThemeSettings.Colors.$($token)Color.ToString()"
            $Script:ColorMap[$color].Tokens += $token
        }
    }
}
function Add-PSReadLineColors {
    <#
        .SYNOPSIS
        Adds PSReadLine colors.
        .DESCRIPTION
        Adds PSReadLine module token colors to color map.
    #>
    if ($PSReadline = Get-Module PSReadLine) {
        $options = Get-PSReadlineOption
        if ($PSReadline.Version.Major -ge 2) {
            foreach ($token in ($options | Get-Member -MemberType Property -Name *Color | ForEach-Object { $_.Name -replace "(.+)Color", '$1' })) {
                $ansiColor = [regex]::Replace((Invoke-Expression "`$options.$($token)Color.ToString()"), ".*\[((?:\d{1,3};?)+)m", '$1')
                $color = ($Script:ColorMap.GetEnumerator() | Where-Object { $_.Value.ANSI.FG -in ($ansiColor -split ";") } | Select-Object -First 1).Key
                $Script:ColorMap[$color].Tokens += $token
            }
        }
        else {
            foreach ($token in ($options | Get-Member -MemberType Property -Name *ForegroundColor | ForEach-Object { $_.Name -replace "(.+)ForegroundColor", "$1" })) {
                $color = Invoke-Expression "`$options.$($token)ForegroundColor.ToString()"
                $Script:ColorMap[$color].Tokens += $token
            }
        }
    }
}
function Clear-Tokens {
    <#
        .SYNOPSIS
        Clears the token color map.
        .DESCRIPTION
        Clears the tokens assigned to the colors in the colorMap variable.
    #>
    foreach($color in $Script:ColorMap.GetEnumerator()) {
        $color.Value.Tokens = @()
    }
}
function Encode($value, $type) {
    <#
        .SYNOPSIS
        Encodes a value to the specified type.
        .DESCRIPTION
        Encodes the specified value to the specified type.
    #>
    switch($type) {
        "bool" {
            if ($value) {
                return 1
            }
            else {
                return 0
            }
        }
        "color" {
            if ($value -notmatch "^#[\da-f]{6}$") {
                Write-Error "Invalid color: $value. Color must be in Hex format. e.g.: #000000."
                exit 1
            }
            $bytes = [BitConverter]::GetBytes([Convert]::ToInt32($value.Substring(1,6), 16))
            for ($i = 3; $i -gt 0; $i--) {
                $bytes[$i] = $bytes[$i - 1]
            }
            $bytes[0] = 0
            [Array]::Reverse($bytes)
            return [BitConverter]::ToInt32($bytes, 0)
        }
        "cursor" {
            switch($value) {
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
                    Write-Warning "Invalid cursor_size '$value'. By default, setting to 'Large'."
                    return 0x19
                }
            }
        }
        "dim" {
            if ($value -notmatch "^\d+x\d+$") {
                Write-Error "Invalid dimensions: $value."
                exit 1
            }
            $dim = $value.Split("x") | ForEach-Object { [BitConverter]::GetBytes([Int16]::Parse($_)) }
            return [BitConverter]::ToInt32(@($dim[0], $dim[1], $dim[2], $dim[3]), 0)
        }
        "fg_bg" {
            $foreground, $background = $value.Split(",")
            if (!$foreground -or !$background) {
                Write-Error "Invalid foreground or background color: $value."
                exit 1
            }
            return (Get-ConsoleColorIndex $background) * 16 + (Get-ConsoleColorIndex $foreground) 
        }
        "font_bold" {
            if ($value) {
                return 700
            } else {
                return 400
            }
        }
        "font_type" {
            if ($value) {
                return 54
            } else {
                return 0
            }
        }
        default {
            return $value
        }
    }
}
function Enter-Elevated([scriptblock]$Script) {
    <#
        .SYNOPSIS
        Exectues the specified script with elevated privileges.
        .DESCRIPTION
        Enters in administrator session (if needed) and executes the specified script.
        .PARAMETER script
        The script block to execute.
    #>
    # ─── IF NOT CURRENTLY RUNNING AS ADMINISTRATOR ──────────────────────────────────
    if (-Not ([System.Security.Principal.WindowsPrincipal] [System.Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([System.Security.Principal.WindowsBuiltInRole]::Administrator)) {
        # ─────────────────────────────── RUN SCRIPT AS ADMINISTRATOR ─────
        Start-Process PowerShell.exe -Verb RunAs -ArgumentList "-NonInteractive -ScriptBlock { $Script }"
    }
    else {
        Invoke-Command -ScriptBlock $Script
    }
}
function Get-ConsoleColorIndex($colorName) {
    <#
        .SYNOPSIS
        Gets the console color index.
        .DESCRIPTION
        Gets the console color table index for the specified colorName.
    #>
    $index = 0
    foreach ($consoleColor in [Enum]::GetValues([ConsoleColor])) {
        if ($consoleColor -eq $colorName) {
            return $index
        }
        $index++
    }
    Write-Error "Invalid index color: $colorName."
    exit 1
}
function Get-ConsoleHost {
    <#
        .SYNOPSIS
        Gets the console host name.
        .DESCRIPTION
        Gets the current process host name.
    #>
    $currentProcess = Get-Process -Id $pid
    if ($currentProcess.Parent) {
        return $currentProcess.Parent.ProcessName
    }
    return $currentProcess.ProcessName
}
function Get-Daytime {
    <#
        .SYNOPSIS
        Indicates whether is daytimes.
        .DESCRIPTION
        Gets a value indicating whether currently is daytime or nighttime.
    #>
    # ────────────────────────────────────────────── SET DEFAULT DAYLIGHT VALUES ──────────
    $sunrise = ("8:00" | Get-Date) # Set default sunrise time.
    $sunset = ("19:30" | Get-Date) # Set default sunset time.
    # ─────────────────────────────────────────────────────── GET GEO-LOCATION ───────────
    Write-Debug "Retrieving location..."
    Add-Type -AssemblyName System.Device # Required to access System.Device.Location namespace.
    $GeoWatcher = New-Object System.Device.Location.GeoCoordinateWatcher #Create the required object.
    $GeoWatcher.Start() # Begin resolving current locaton.
    while (($GeoWatcher.Status -ne "Ready") -and ($GeoWatcher.Permission -ne "Denied")) {
        Start-Sleep -Milliseconds 100 # Wait for discovery location.
    }
    if ($GeoWatcher.Permission -eq "Denied") {
        Write-Error "Access denied for location information" # Report error
    }
    else {
        # ───────────────────────────────────────────────────────────── GET LOCATION ─────
        $location = $GeoWatcher.Position.Location
        $daytime = (Invoke-RestMethod "https://api.sunrise-sunset.org/json?lat=$($location.Latitude)&lng=$($location.Longitude)").Results # Get sunrise and sunset times
        # ──────────────────────────────────────────────────── CONVERT TO LOCAL TIME ─────
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
function Import-ConsoleSettings {
    <#
        .SYNOPSIS
        Imports the specified console settings.
        .DESCRIPTION
        Imports the console settings contained in the specified JSON file path.
        .PARAMETER files
        The file paths or file names (under 'Settings' directory, with .json extension) that contains the console settings.
    #>
    param(
        # The file paths or file names (under 'Settings' directory, with .json extension).
        [Parameter(Mandatory = $true)]
        [string[]]$files
    )
    foreach ($file in $files) {
        Write-Debug "Loading $file settings..."
        if (!(Test-Path $file)) {
            $file = Resolve-Path "$PSScriptRoot\Settings\$file.json" # Find in local settings directory
            if (!(Test-Path $file)) {
                Write-Error "File Settings not found: $file" # Show error
                return
            }
            # ─── GET CONSOLE SETTINGS ────────────────────────────────────────
            $encoded = @{}
            (Get-Content $file | ConvertFrom-Json).PSObject.Properties | ForEach-Object {
                $encoded[$_.Name] = (Encode $_.Value $Script:TypeMap[$_.Name])
            }
            # ─── SET CONSOLE SETTINGS ────────────────────────────────────────
            $consoleRegistryPath = "HKCU:\Console"
            if (!(Test-Path $consoleRegistryPath)) {
                New-Item $consoleRegistryPath | Out-Null # Create console registry key
                Write-Debug "$consoleRegistryPath key created."
            }
            # ───────────────────────────────── UPDATE CONSOLE PROPERTIES ─────
            $encoded.Keys | ForEach-Object {
                if (((Get-ItemProperty -Path $consoleRegistryPath).$_) -ne $encoded[$_]) {
                    Set-ItemProperty -Path $consoleRegistryPath -Name $_ -Value $encoded[$_]
                    Write-Debug "$consoleRegistryPath\\$_ value modified to $($encoded[$_])"
                }
            }
        }
    }
}
function Set-CmdPrompt {
    <#
        .SYNOPSIS
        Sets the CMD prompt.
        .DESCRIPTION
        Sets the CMD promt to "Host > Path > ".
    #>
    $environmentPath = "HKCU:\Environment"
    $prompt = "PROMPT"
    $promptValue = "`$E[0;30;41m %ComputerName% `$E[31;42m `$P `$E[0;32m`$E[1;30m "
    if ((Get-ItemProperty -Path $environmentPath -Name $prompt).PROMPT -ne $promptValue) {
        Set-ItemProperty -Path "HKCU:\Environment" -Name $prompt -Value $promptValue # Set CMD prompt
        Write-Debug "CMD Prompt changed."
    }
}
function Set-CommonColors {
    <#
        .SYNOPSIS
        Sets the common console colors.
        .DESCRIPTION
        Sets the PowerShell common console colors accordiong to Base16 (https://github.com/chriskempson/base16) color scheme.
    #>
    $Host.PrivateData.DebugBackgroundColor    = [ConsoleColor]::Black    # base00 Default backgroud.
    $Host.PrivateData.DebugForegroundColor    = [ConsoleColor]::DarkGray # base03 Comments, Invisibles, Line Highlighting.
    $Host.PrivateData.ErrorBackgroundColor    = [ConsoleColor]::Black    # base00 Default backgroud.
    $Host.PrivateData.ErrorForegroundColor    = [ConsoleColor]::Red      # base08 Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted.
    $Host.PrivateData.ProgressBackgroundColor = [ConsoleColor]::DarkBlue # base01 Lighter Background (Used for status bars).
    $Host.PrivateData.ProgressForegroundColor = [ConsoleColor]::White    # base06 Light Foreground (Not often used).
    $Host.PrivateData.VerboseBackgroundColor  = [ConsoleColor]::Black    # base00 Default backgroud.
    $Host.PrivateData.VerboseForegroundColor  = [ConsoleColor]::DarkGray # base03 Comments, Invisibles, Line Highlighting.
    $Host.PrivateData.WarningBackgroundColor  = [ConsoleColor]::Black    # base00 Default backgroud.
    $Host.PrivateData.WarningForegroundColor  = [ConsoleColor]::Yellow   # base0e Keywords, Storage, Selector, Markup Italic, Diff Changed.
    $Host.UI.RawUI.BackgroundColor            = [ConsoleColor]::Black    # base00 Default backgroud.
    $Host.UI.RawUI.ForegroundColor            = [ConsoleColor]::Gray     # base05 Default Foreground, Caret, Delimiters, Operators.
    Write-Debug "Set common tokens according to $ColorScheme color scheme."
}
function Set-ConsoleSettings {
    <#
        .SYNOPSIS
        Sets the console settings.
        .DESCRIPTION
        Sets the default console settings for command prompt (cmd.exe), PowerShell (PowerShell.exe), PowerShell Core (pwsh.exe) and Windows Subsystem for Linux (wsl.exe).
        .PARAMETER ColorScheme
        The color scheme to set.
        .PARAMETER Auto
        A value indicating whether the light/dark mode is dinamically set. This adds a Dark/Light suffix to the color scheme name.
        .PARAMETER Debug
        A value indicating whether debug messages will be printed.
    #>
    param(
        [string]$ColorScheme = "Default",
        [bool]$Auto = $true,
        [switch]$Debug = $true
    )
    if ($Debug) { $DebugPreference = 'Continue' } # Write debug if specified.
    Set-CmdPrompt # Set CMD prompt.
    if ($Auto -and $ColorScheme -ne "Default") {
        # ─── SET LIGHT OR DARK COLOR SCHEME ──────────────────────────────
        $daytime = Get-Daytime
        $ColorScheme += @("Dark", "Light")[$daytime]
    }
    Import-ConsoleSettings "Common", $ColorScheme # Set console settings.
    $consoleHost = Get-ConsoleHost # Get console host.
    if ($consoleHost -eq "WindowsTerminal") {
        Set-WindowsTerminal !($daytime) $ColorScheme # Set Windows Terminl settings.
    }
    Set-CommonColors # Set PowerShell console common colors.
    Set-PSReadLine # Set PSReadLine settings.
    Set-OhMyPosh # Set Oh-My-Posh settings.
}
function Set-OhMyPosh {
    <#
        .SYNOPSIS
        Sets Oh-My-Posh options.
        .DESCRIPTION
        Sets the Oh-My-Posh module options.
    #>
    if (-Not (Get-Module -ListAvailable -Name posh-git)) {
        Enter-Elevated {
            Install-Module posh-git # Install Posh-Git.
        }
    }
    Import-Module posh-git # Import Posh-Git
    if (-Not (Get-Module -ListAvailable -Name oh-my-posh)) {
        Enter-Elevated {
            Install-Module oh-my-posh # Install Oh-My-Posh.
        }
    }
    Import-Module oh-my-posh # Import Oh-My-Posh
    $ThemeSettings.MyThemesLocation = Resolve-Path (Join-Path $PSScriptRoot "Settings\Oh-My-Posh") # set Oh-My-Posh themes location.
    Set-Theme "Base16" # Set Oh-My-Posh theme.
    Set-Prompt # Set prompt
}
function Set-PSReadLine {
    <#
        .SYNOPSIS
        Sets PSReadLine options.
        .DESCRIPTION
        Sets the PSReadLine module options.
    #>
    if (-Not (Get-Module -ListAvailable -Name PSReadLine) -or (Get-Module -ListAvailable -Name PSReadLine).Version.Major -lt 2) {
        Enter-Elevated {
            Install-Module PSReadLine -AllowPrerelease -Force -SkipPublisherCheck
        }
        Import-Module PSReadLine
    }
    $options = Get-PSReadlineOption # Get PSReadLine options
    # ─────────────────────────────────────────────────────── SET PROMPT OPTIONS ─────
    $options.ContinuationPrompt      = "->"
    # ─────────────────────────────────────────────────────────────── SET COLORS ─────
    $options.CommandColor            = [ConsoleColor]::DarkYellow  # *base0f Deprecated: Opening/Closing Embedded Language Tags (e.g. <?php ?>). Inconsistent
    $options.CommentColor            = [ConsoleColor]::DarkGray    # base03 Comments, Invisibles, Line Highlighting.
    $options.ContinuationPromptColor = [ConsoleColor]::DarkGray    # base03 Comments, Invisibles, Line Highlighting.
    $options.DefaultTokenColor       = [ConsoleColor]::White       # base06 Light Foreground (Not often used).
    $options.EmphasisColor           = [ConsoleColor]::White       # base06 Light Foreground (Not often used).
    $options.ErrorColor              = [ConsoleColor]::Red         # base08 Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted.
    $options.KeywordColor            = [ConsoleColor]::Yellow      # base0e Keywords, Storage, Selector, Markup Italic, Diff Changed.
    $options.MemberColor             = [ConsoleColor]::DarkMagenta # *base0d Functions, Methods, Attribute IDs, Headings.                        Review
    $options.NumberColor             = [ConsoleColor]::Cyan        # base09 Integers, Boolean, Constants, XML Attributes, Markup Link Url.
    $options.OperatorColor           = [ConsoleColor]::Gray        # *base05 Default Foreground, Caret, Delimiters, Operators.                   Base16 standard, review
    $options.ParameterColor          = [ConsoleColor]::DarkRed     # *base04 Dark Foreground (Used for status bars).                             Review
    $options.SelectionColor          = [ConsoleColor]::DarkGreen   # base02 Selection Background.
    $options.StringColor             = [ConsoleColor]::Green       # base0b Strings, Inherited Class, Markup Code, Diff Inserted.
    $options.TypeColor               = [ConsoleColor]::Magenta     # base0a Classes, Markup Bold, Search Text Background.
    $options.VariableColor           = [ConsoleColor]::Red         # base08 Variables, XML Tags, Markup Link Text, Markup Lists, Diff Deleted.
    Write-Debug "Set PSReadLine tokens according to $ColorScheme color scheme."
}
function Set-WindowsTerminal {
    <#
        .SYNOPSIS
        Sets the Windows Terminal settings.
        .DESCRIPTION
        Sets CRT-Emulation, color scheme and font for Windows Terminal.
        .PARAMETER ColorScheme
        The color scheme.
        .PARAMETER CrtEmulation
        A value indicating wheter the CRT emulation is turned on.
        .PARAMETER FontFamily
        The font family name.
    #>
    param(
        [string]$ColorScheme,
        [bool]$CrtEmulation,
        [string]$FontFamily
    )
    $wtProfileLocation = "$env:LocalAppData\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\profiles.json" # Get profile location.
    if (Test-Path $wtProfileLocation) {
        $wtProfile = Get-Content -Path $wtProfileLocation -Raw # Get profile
        $changed = $false
        $crtEmulationProperty = '"experimental.retroTerminalEffect": '
        $wrongCrtEmulation = $crtEmulationProperty + $Script:BoolValues[-Not $CrtEmulation]
        if ($wtProfile -match $wrongCrtEmulation) {
            $wtProfile = $wtProfile -replace $wrongCrtEmulation, $crtEmulationProperty + $Script:BoolValues[$CrtEmulation]
            $changed = $true
            Write-Debug "CRT emulation set to $crtEmulation."
        }
        $colorSchemePropertyName = '"colorScheme":'
        $colorSchemeProperty = $colorSchemePropertyName + ' "(.*?)"'
        if ($wtProfile -match $colorSchemeProperty -and $Matches[1] -ne $ColorScheme) {
            $wtProfile -replace $colorSchemeProperty, '$colorSchemePropertyName "$ColorScheme"'
            $changed = $true
            Write-Debug "Color scheme changed from $($Matches[1]) to $ColorScheme."
        }
        if ($changed) {
            Set-Content -Path $wtProfileLocation -Value $wtProfile
        }
    }
}
function Show-ANSIColors {
    <#
        .SYNOPSIS
        Shows the ANSI colors.
        .DESCRIPTION
        Shows the current ANSI colors.
    #>
    Write-Host (" " * 16) -NoNewline
    foreach ($bg in ($Script:ColorMap.GetEnumerator() | Where-Object { [System.Convert]::ToInt32($_.Value.ANSI.BG) -le 47 } | Sort-Object { $_.Value.ANSI.BG })) {
        Write-Host ("{0,-7} " -f "  $($bg.Value.ANSI.BG)m") -NoNewline
    }
    Write-Host
    $example = "  " + [char]::ConvertFromUtf32(0x2219) * 3
    foreach ($fg in ($Script:ColorMap.GetEnumerator() | Sort-Object { $_.Value.ANSI.FG })) {
        Write-Host ("{0,7} " -f "$($fg.Value.ANSI.FG)m ", $example) -NoNewline
        Write-Host ("{0,-7} " -f $example) -ForegroundColor $fg.Name -NoNewline
        foreach ($bg in ($Script:ColorMap.GetEnumerator() | Where-Object { [System.Convert]::ToInt32($_.Value.ANSI.BG) -le 47 } | Sort-Object { $_.Value.ANSI.BG })) {
            Write-Host ("{0,-7}" -f $example) -BackgroundColor $bg.Name -ForegroundColor $fg.Name -NoNewline
            Write-Host " " -NoNewline
        }
        Write-Host
    }
    Write-Host "`n"
}
function Show-ConsoleColors([switch]$Basic, [switch]$OhMyPosh, [switch]$PsReadLine) {
    <#
        .SYNOPSIS
        Shows the console colors.
        .DESCRIPTION
        Shows the current console colors and, optionally, the colors specified to the different tokens.
        .PARAMETER basic
        A value inticating whether to show the colors of the basic tokens.
        .PARAMETER OhMyPosh
        A value inticating whether to show the colors of the Oh-My-Posh tokens.
        .PARAMETER PsReadLine
        A value inticating whether to show the colors of the PSReadline tokens.
    #>
    Clear-Tokens
    $all = !($Basic) -and !($OhMyPosh) -and !($PsReadLine)
    if ($all -or $Basic) { Add-BasicColors }
    if ($all -or $OhMyPosh) { Add-OhMyPoshColors }
    if ($all -or $PsReadLine) { Add-PSReadLineColors }
    $e = [char]27
    $Script:ColorMap.GetEnumerator() | Sort-Object { $_.Value.Cmd.Index } | Format-Table @{
        Label = "##"
        Expression = { ("$e[0m{0:00}" -f $_.Value.Cmd.Index) }
    },
    @{
        Label = "PowerShell"
        Expression = {
            if ($_.Value.Cmd.Index -eq 0) {
                "$e[$($_.Value.ANSI.FG);47m$($_.Name)$e[0m"
            }
            else {
                "$e[$($_.Value.ANSI.FG)m$($_.Name)$e[0m"
            }
        }
    },
    @{
        Label = "CMD"
        Expression = {
            if ($_.Value.Cmd.Index -eq 0) {
                "$e[$($_.Value.ANSI.FG);47m$($_.Value.Cmd.Name)$e[0m"
            }
            else {
                "$e[$($_.Value.ANSI.FG)m$($_.Value.Cmd.Name)$e[0m"
            }
        }
    },
    @{
        Label = "ANSI"
        Expression = {
            if ($_.Value.Cmd.Index -eq 0) {
                "$e[$($_.Value.ANSI.FG);47m$($_.Value.ANSI.FG)$e[0m"
            }
            else {
                "$e[$($_.Value.ANSI.FG)m$($_.Value.ANSI.FG)$e[0m"
            }
        }
    },
    @{
        Label = "Tokens"
        Expression = {
            if ($_.Value.Cmd.Index -eq 0) {
                "$e[$($_.Value.ANSI.FG);47m$($_.Value.Tokens)$e[0m"
            }
            else {
                "$e[$($_.Value.ANSI.FG)m$($_.Value.Tokens)$e[0m"
            }
        }
    }
}