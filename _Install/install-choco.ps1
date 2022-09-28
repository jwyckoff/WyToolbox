

echo '-------------------------------------------------------------------------------------------'
echo '-'
echo '- Install Chocolatey'
echo '-'
echo '-------------------------------------------------------------------------------------------'

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

choco install powershell-core -y
choco install visualstudiocode -y
choco install notepadplusplus -y 
choco install 7zip -y
choco install powertoys -y
choco install git -y
choco install clickie -y 
choco install autohotkey -y

choco install brave -y

echo '-------------------------------------------------------------------------------------------'
echo '-'
echo '- Poshgit'
echo '-'
echo '-------------------------------------------------------------------------------------------'

choco install poshgit -y
Import-Module posh-git
Add-PoshGitToProfile 

echo '-------------------------------------------------------------------------------------------'
echo '-'
echo '- Install Hugo'
echo '-'
echo '-------------------------------------------------------------------------------------------'
choco install hugo-extended -confirm

echo '-------------------------------------------------------------------------------------------'
echo '-'
echo '- Install Powershell Core'
echo '-'
echo '-------------------------------------------------------------------------------------------'
choco install powershell-core -y

# choco upgrade powershell-core -y

echo '-------------------------------------------------------------------------------------------'
echo '-'
echo '- Install Python'
echo '-'
echo '-------------------------------------------------------------------------------------------'
choco install -y python3


echo '-------------------------------------------------------------------------------------------'
echo '-'
echo '- Install nodejs'
echo '-'
echo '-------------------------------------------------------------------------------------------'
choco install -y nodejs



echo '-------------------------------------------------------------------------------------------'
echo '-'
echo '- Install pandoc'
echo '-'
echo '-------------------------------------------------------------------------------------------'
choco install pandoc
winget install -e --id JohnMacFarlane.Pandoc

echo '-------------------------------------------------------------------------------------------'
choco install docker-desktop
