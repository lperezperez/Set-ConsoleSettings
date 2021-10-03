#requires -Version 2 -Modules posh-git
function Write-Theme {
    param(
        # Indicates whether the last executed command failed.
        [bool]$LastCommandFailed,
        [string]$With
    )
    # ─── SET DIVIDERS ACCORDING TO ACCESS LEVEL ─────────────────────────────────────
    if (Test-Administrator) {
        # ────────────────────────────────────── SET DIVIDERS TO FIRE ─────
        $ThemeSettings.PromptSymbols.SegmentForwardSymbol = [char]::ConvertFromUtf32(0xe0c0)
    }
    else {
        # ───────────────────────── SET DIVIDERS TO POWERLINE STANDARD ─────
        $ThemeSettings.PromptSymbols.SegmentForwardSymbol = [char]::ConvertFromUtf32(0xe0b0)
    }
    # ─── SET PROMPT INDICATOR ───────────────────────────────────────────────────────
    $ThemeSettings.PromptSymbols.PromptIndicator = $ThemeSettings.PromptSymbols.SegmentForwardSymbol
    # ─── SET COLORS ─────────────────────────────────────────────────────────────────
    # $ThemeSettings.Colors.PromptBackgroundColor           = [ConsoleColor]::DarkGreen
    $ThemeSettings.Colors.PromptForegroundColor           = [ConsoleColor]::DarkCyan
    $ThemeSettings.Colors.WithBackgroundColor             = [ConsoleColor]::DarkCyan
    $ThemeSettings.Colors.WithForegroundColor             = [ConsoleColor]::Black
    $ThemeSettings.Colors.GitLocalChangesColor            = [ConsoleColor]::Yellow
    $ThemeSettings.Colors.GitNoLocalChangesAndAheadColor  = [ConsoleColor]::Green
    $ThemeSettings.Colors.GitNoLocalChangesAndBehindColor = [ConsoleColor]::Red
    # ─── CHECK THE LAST COMMAND STATE AND INDICATE IF FAILED ────────────────────────
    If ($LastCommandFailed) {
        $ThemeSettings.Colors.WithBackgroundColor         = [ConsoleColor]::Red
        $ThemeSettings.Colors.PromptForegroundColor       = [ConsoleColor]::Red
    }
    $lastColor = $ThemeSettings.Colors.PromptBackgroundColor
    # ─── HOSTNAME ───────────────────────────────────────────────────────────────────
    $prompt += Write-Prompt -Object " $([Environment]::MachineName) " -BackgroundColor $ThemeSettings.Colors.WithBackgroundColor -ForegroundColor $ThemeSettings.Colors.WithForegroundColor
    # ─── SEPARATOR ──────────────────────────────────────────────────────────────────
    $prompt += Write-Prompt -Object "$($ThemeSettings.PromptSymbols.SegmentForwardSymbol) " -BackgroundColor $ThemeSettings.Colors.PromptBackgroundColor -ForegroundColor $ThemeSettings.Colors.WithBackgroundColor
    # ─── PATH ───────────────────────────────────────────────────────────────────────
    $prompt += Write-Prompt -Object "$(Get-FullPath -dir $pwd) " -BackgroundColor $ThemeSettings.Colors.PromptBackgroundColor -ForegroundColor $ThemeSettings.Colors.PromptForegroundColor
    # ─── GIT ────────────────────────────────────────────────────────────────────────
    $status = Get-VCSStatus
    if ($status) {
        $themeInfo = Get-VcsInfo -status ($status)
        $lastColor = $themeInfo.BackgroundColor
        $prompt += Write-Prompt -Object $($ThemeSettings.PromptSymbols.SegmentForwardSymbol) -ForegroundColor $ThemeSettings.Colors.PromptBackgroundColor -BackgroundColor $themeInfo.BackgroundColor
        $prompt += Write-Prompt -Object " $($themeInfo.VcInfo) " -BackgroundColor $themeInfo.BackgroundColor -ForegroundColor $ThemeSettings.Colors.GitForegroundColor
    }
    $prompt += Write-Prompt -Object $ThemeSettings.PromptSymbols.SegmentForwardSymbol -ForegroundColor $lastColor # Divider
    $prompt += " " # Space
    $prompt
}