# Set-ConsoleSettings
![Banner](Banner.svg "Set-ConsoleSettings")

[![Latest version: 0.0.1](https://img.shields.io/badge/version-0.0.2-5d01d6.svg?label=Version&logo=V&logoColor=fff "Latest version: 0.0.2")](https://github.com/lperezperez/Set-ConsoleSettings) [![Platform: Windows](https://img.shields.io/badge/platform-Windows-0178d6.svg?logo=windows "Microsoft Windows")](https://www.microsoft.com/windows) [![License: MIT](https://img.shields.io/badge/License-MIT-d65d01.svg?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA4AAAAOCAYAAAAfSC3RAAABJmlDQ1BBZG9iZSBSR0IgKDE5OTgpAAAoFWNgYDJwdHFyZRJgYMjNKykKcndSiIiMUmA/z8DGwMwABonJxQWOAQE+IHZefl4qAwb4do2BEURf1gWZxUAa4EouKCoB0n+A2CgltTiZgYHRAMjOLi8pAIozzgGyRZKywewNIHZRSJAzkH0EyOZLh7CvgNhJEPYTELsI6Akg+wtIfTqYzcQBNgfClgGxS1IrQPYyOOcXVBZlpmeUKBhaWloqOKbkJ6UqBFcWl6TmFit45iXnFxXkFyWWpKYA1ULcBwaCEIWgENMAarTQZKAyAMUDhPU5EBy+jGJnEGIIkFxaVAZlMjIZE+YjzJgjwcDgv5SBgeUPQsykl4FhgQ4DA/9UhJiaIQODgD4Dw745AMDGT/0QRiF8AAAACXBIWXMAAAsTAAALEwEAmpwYAAAGTGlUWHRYTUw6Y29tLmFkb2JlLnhtcAAAAAAAPD94cGFja2V0IGJlZ2luPSLvu78iIGlkPSJXNU0wTXBDZWhpSHpyZVN6TlRjemtjOWQiPz4gPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyIgeDp4bXB0az0iQWRvYmUgWE1QIENvcmUgNi4wLWMwMDIgNzkuMTY0NDYwLCAyMDIwLzA1LzEyLTE2OjA0OjE3ICAgICAgICAiPiA8cmRmOlJERiB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiPiA8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIiB4bWxuczpzdEV2dD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlRXZlbnQjIiB4bWxuczpwaG90b3Nob3A9Imh0dHA6Ly9ucy5hZG9iZS5jb20vcGhvdG9zaG9wLzEuMC8iIHhtbG5zOmRjPSJodHRwOi8vcHVybC5vcmcvZGMvZWxlbWVudHMvMS4xLyIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgMjEuMiAoV2luZG93cykiIHhtcDpDcmVhdGVEYXRlPSIyMDIwLTEwLTA3VDAwOjM3OjMzKzAyOjAwIiB4bXA6TWV0YWRhdGFEYXRlPSIyMDIwLTEwLTA3VDAwOjM3OjMzKzAyOjAwIiB4bXA6TW9kaWZ5RGF0ZT0iMjAyMC0xMC0wN1QwMDozNzozMyswMjowMCIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDphZGU1YjczYy0wOWI1LWFmNDgtYmJkZi03NWQxMWM2ZTMwYmUiIHhtcE1NOkRvY3VtZW50SUQ9ImFkb2JlOmRvY2lkOnBob3Rvc2hvcDo1ZmYyZWI4MS03NTE0LTgwNDQtYjUyYy1jNzZkZDhmN2I2NWIiIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDo1OTZkYjZmYS0yZmM4LWVkNDAtYjM5Ny1kNDg2NzBhZjM0NzQiIHBob3Rvc2hvcDpDb2xvck1vZGU9IjMiIGRjOmZvcm1hdD0iaW1hZ2UvcG5nIj4gPHhtcE1NOkhpc3Rvcnk+IDxyZGY6U2VxPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0iY3JlYXRlZCIgc3RFdnQ6aW5zdGFuY2VJRD0ieG1wLmlpZDo1OTZkYjZmYS0yZmM4LWVkNDAtYjM5Ny1kNDg2NzBhZjM0NzQiIHN0RXZ0OndoZW49IjIwMjAtMTAtMDdUMDA6Mzc6MzMrMDI6MDAiIHN0RXZ0OnNvZnR3YXJlQWdlbnQ9IkFkb2JlIFBob3Rvc2hvcCAyMS4yIChXaW5kb3dzKSIvPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0ic2F2ZWQiIHN0RXZ0Omluc3RhbmNlSUQ9InhtcC5paWQ6YWRlNWI3M2MtMDliNS1hZjQ4LWJiZGYtNzVkMTFjNmUzMGJlIiBzdEV2dDp3aGVuPSIyMDIwLTEwLTA3VDAwOjM3OjMzKzAyOjAwIiBzdEV2dDpzb2Z0d2FyZUFnZW50PSJBZG9iZSBQaG90b3Nob3AgMjEuMiAoV2luZG93cykiIHN0RXZ0OmNoYW5nZWQ9Ii8iLz4gPC9yZGY6U2VxPiA8L3htcE1NOkhpc3Rvcnk+IDxwaG90b3Nob3A6RG9jdW1lbnRBbmNlc3RvcnM+IDxyZGY6QmFnPiA8cmRmOmxpPkUwN0Y5Mzk1MDhFQTM3QzU4REI4NUVCQUE0NTFGRjUzPC9yZGY6bGk+IDwvcmRmOkJhZz4gPC9waG90b3Nob3A6RG9jdW1lbnRBbmNlc3RvcnM+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+/vYkRwAAARRJREFUKBVj+P//PwMWzAXEz4D4LA55BmTOEiCeDcTdUBoG+qBiC4F4OrpGQyD+C8R5UD4rEJ8G4nlAzAkVqwbiL0CsgaxxIhBrA3ENECtBxc5DXQFiGwBxMVRNH0yjGxBPgCpIAuJGKPsSEK+AsruAOBjKngbEVgxQEzSQ/NoOxEJAvB/qEhEg7kCSNwEZBGLEA7E0EKsAsRwQ+wGxGhDvAOIeqLgvECtA2fIgPSCNr/9jAjEgXgnE9UDMjUX+HQM0JJHBUaiTQPQcKPsgmppSmLtdof7IRvLLZaitMH4GVI0negJAx6DoWEpMykHHx4F4KrEa2YDYHohrgfgHED8F4hIgNsWnsQqI7/7HDS4CcQpMPQBC9I8A38nA5AAAAABJRU5ErkJggg== "License: MIT")](LICENSE.md) [![Keep a Changelog 1.0.0](https://img.shields.io/badge/changelog-Keep%20a%20Changelog%201.0.0-7ad601.svg?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA4AAAAOCAYAAAAfSC3RAAAAAXNSR0IArs4c6QAAASJJREFUOI2dkrFNxEAQRd+3SJGWDJHgDjhykLYDXIIRBeASroTrAFeATAEnmQqgA5wTnCPSTzJ7WiFEwErWamZn/7z5a/jnUh3YTsAd0AIr8Crp/U8F273tne0c8U3kJtvdrx2jeAPMwAAsP+oWoJW0LYkm9h4YYx8AA1fAAXgGMrC33deIG9tDfJeB28ZZG6i3tsdAz6VjDsQWuAe2QLa9kbRI6oCHICp0NECKxAwgaQ2RXJkyh8sZmGznMmOKg3o9FrEwp9TMQNdUhanqDvAS2ESnBUhBlE4isQIdsMZsR9vDjDVEl4hnhYN9jREzHoAzYCrCkgbbo6S+kVQee4pLCXiK+KMSmmyPBf/4r9reAW/AJ/AFnAOnwAVwDUySypPwDejkn/hR/FS/AAAAAElFTkSuQmCC)](http://keepachangelog.com/en/1.0.0/)
> Sets default console settings

The aims of this module is to set custom global default settings for [Command prompt (cmd.exe)](https://docs.microsoft.com/windows-server/administration/windows-commands/cmd), [PowerShell for Microsoft© Windows™ (Powershell.exe), PowerShell Core (pwsh.exe)](https://aka.ms/PowerShell), [Windows™ Terminal (wt.exe)](https://aka.ms/terminal) and [Microsoft© Windows™ Subsystem for Linux (wsl.exe)](https://aka.ms/wsl).

## Install
## Usage
See the [Wiki](/wiki) for more detals.
## Changelog
See the [Changelog](CHANGELOG.md) for more details.
## Maintainer
[@Luiyi](https://github.com/lperezperez)
## Contribute
This repository follows the [Contributors covenant code of conduct](https://www.contributor-covenant.org/version/2/0).
## License
Under [MIT license](LICENSE.md) terms.