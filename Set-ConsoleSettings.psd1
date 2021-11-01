@{
  RootModule = "Set-ConsoleSettings.psm1"
  ModuleVersion = "0.0.2"
  GUID = "76b72f26-3582-4655-b90f-54df4a197c1c"
  Author = "Luis Pérez"
  Copyright = "2021 © Luis Pérez"
  Description = "Sets default console settings."
  FunctionsToExport = @("Assert-DayLight", "Enter-Elevated", "Get-ConsoleHost", "Get-FrontEnd", "Get-DarkMode", "Set-ConsoleSettings", "Show-ANSIColors", "Show-ConsoleColors", "Show-ConsoleInfo")
  # Private data to pass to the module specified in RootModule. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
  PrivateData = @{
    PSData = @{
      Prerelease = "alpha"
      # Tags applied to this module. These help with module discovery in online galleries.
      Tags = @("cmd", "colors", "git", "oh-my-posh", "posh-git", "prompt", "terminal", "theme", "windows", "wsl")
      # A URL to the license for this module.
      LicenseUri = "https://github.com/lperezperez/Set-ConsoleSettings/blob/master/LICENSE.md"
      # A URL to the main website for this project.
      ProjectUri =  "https://github.com/lperezperez/Set-ConsoleSettings"
    } # End of PSData hashtable
  } # End of PrivateData hashtable
}