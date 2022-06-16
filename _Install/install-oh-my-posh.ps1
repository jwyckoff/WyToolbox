winget install JanDeDobbeleer.OhMyPosh

# https://ohmyposh.dev/docs/installation/prompt

notepad $PROFILE

New-Item -Path $PROFILE -Type File -Force

Add the following to the file:

oh-my-posh init pwsh | Invoke-Expression

. $PROFILE



# VS Code

add this to the settings:

"terminal.integrated.fontFamily" : "MesloLGM NF",
"terminal.integrated.fontSize" : 14,
