@{
	RootModule = "Set-ConsoleSettings.psm1"
	ModuleVersion = "0.0.2"
	GUID = "76b72f26-3582-4655-b90f-54df4a197c1c"
	Author = "Luis Pérez"
	Copyright = "2022 © Luis Pérez"
	Description = "Sets default console settings."
	FunctionsToExport = @("Assert-DayLight", "Get-FrontEnd", "Set-ConsoleConfiguration", "Show-ANSIColor", "Show-ConsoleColor", "Show-ConsoleInfo")
	PrivateData = @{
		PSData = @{
			Prerelease = "alpha"
			Tags = @("cmd", "colors", "git", "oh-my-posh", "posh-git", "prompt", "terminal", "theme", "windows", "wsl")
			LicenseUri = "https://github.com/lperezperez/Set-ConsoleSettings/blob/master/LICENSE.md"
			ProjectUri =  "https://github.com/lperezperez/Set-ConsoleSettings"
		}
	}
}