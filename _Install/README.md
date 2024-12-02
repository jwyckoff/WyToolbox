
# Installs <!-- omit in toc -->

* [Git / GitHub](#git--github)
* [Core](#core)
* [Oh My Posh](#oh-my-posh)

## Git / GitHub

```powershell
#
# Git
#

winget install -e --id Git.Git

$defaultBranchName = "main"
$defaultUserName = "Jason Wyckoff"
$defaultUserEmail = "jason@jasonwyckoff.com"

git config --global init.defaultBranch $defaultBranchName
git config --global user.name $defaultUserName
git config --global user.email $defaultUserEmail

#
# GitHub
#
winget install -e --id GitHub.cli
winget install -e --id GitHub.GitHubDesktop
```

## Core

```powershell
# 
# Core
#
winget install PowerShell -s winget
winget install powertoys -s winget

winget install -e --id Microsoft.VisualStudioCode
winget install -e --id OpenJS.NodeJS

winget install -e --id Notepad++.Notepad++

winget install -e --id Microsoft.PowerBI
winget install -e --id Microsoft.VisualStudio.Enterprise
winget install -e --id Microsoft.WindowsTerminal

#
# Azure
#

winget install -e --id Microsoft.AzureCLI
winget install -e --id Microsoft.AzureDataStudio
winget install -e --id Microsoft.AzureFunctionsCoreTools
winget install -e --id Microsoft.Bicep
winget install --id Microsoft.officedeploymenttool

Install-Module -Name 'PSDocs.Azure' -Repository PSGallery -Scope CurrentUser

```

## Oh My Posh

See WyPosh