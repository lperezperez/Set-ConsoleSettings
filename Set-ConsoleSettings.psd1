@{
	RootModule = "Set-ConsoleSettings.psm1"
	ModuleVersion = "0.0.2"
	GUID = "76b72f26-3582-4655-b90f-54df4a197c1c"
	Author = "Luis Pérez"
	Copyright = "2021 © Luis Pérez"
	Description = "Sets default console settings."
	RequiredModules = @(
		@{ ModuleName = "PSReadLine"; ModuleVersion = "2.0.0"; Guid = "5714753b-2afd-4492-a5fd-01d9e2cff8b5" },
		@{ ModuleName = "Terminal-Icons"; ModuleVersion = "0.1.1"; Guid = "4419ddb6-3528-47cd-baf3-7fb9d8566620" }
	)
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