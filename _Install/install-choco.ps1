

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
choco install git -y
choco install winmerge -y
choco install beyondcompare -y

choco install clickie -y 
choco install autohotkey -y
choco install brave -y
choco install powertoys -y


echo '-------------------------------------------------------------------------------------------'
echo '-'
echo '- Install Hugo'
echo '-'
echo '-------------------------------------------------------------------------------------------'
choco install hugo-extended -confirm


echo '-------------------------------------------------------------------------------------------'
echo '-'
echo '- Install pandoc'
echo '-'
echo '-------------------------------------------------------------------------------------------'
choco install pandoc
winget install -e --id JohnMacFarlane.Pandoc

echo '-------------------------------------------------------------------------------------------'
choco install docker-desktop
