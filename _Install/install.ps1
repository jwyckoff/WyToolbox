
echo '###########################################################################################'
echo '#'
echo '# Install Azure CLI'
echo '# (run as administrator) '
echo '#'
echo '###########################################################################################'
$ProgressPreference = 'SilentlyContinue'; Invoke-WebRequest -Uri https://aka.ms/installazurecliwindows -OutFile .\AzureCLI.msi; Start-Process msiexec.exe -Wait -ArgumentList '/I AzureCLI.msi /quiet'; rm .\AzureCLI.msi


echo '###########################################################################################'
echo '#'
echo '# Install Chocolatey'
echo '#'
echo '###########################################################################################'

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

winget install PowerShell -s winget
winget upgrade PowerShell -s winget
winget install powertoys -s windget

winget install -e --id Microsoft.VisualStudioCode
winget install -e --id OpenJS.Nodejs
winget install -e --id Microsoft.AzureCLI

winget install -e --id Microsoft.AzureDataStudio
winget install -e --id Microsoft.AzureFunctionsCoreTools
winget install -e --id Microsoft.Bicep
winget install --id Microsoft.officedeploymenttool

winget install -e --id Microsoft.PowerBI
winget install -e --id Microsoft.VisualStudio.Enterprise
winget install -e --id Microsoft.WindowsTerminal

choco install powershell-core -y
choco install brave -y
choco install notepadplusplus -y 
choco install 7zip -y
choco install git -y
choco install powertoys -y
choco install clickie -y
choco install autohotkey -y
winget install -e --id Microsoft.AzureCLI
echo '###########################################################################################'
echo '#'
echo '# Install Hugo'
echo '#'
echo '###########################################################################################'
choco install hugo-extended -confirm

echo '###########################################################################################'
echo '#'
echo '# Install Powershell Core'
echo '#'
echo '###########################################################################################'
choco install powershell-core -y

# choco upgrade powershell-core -y

echo '###########################################################################################'
echo '#'
echo '# Install Python'
echo '#'
echo '###########################################################################################'
choco install -y python3


echo '###########################################################################################'
echo '#'
echo '# Install nodejs'
echo '#'
echo '###########################################################################################'
choco install -y nodejs


echo '###########################################################################################'
echo '#'
echo '# PSDocs.Azure'
echo '#'
echo '###########################################################################################'
Install-Module -Name 'PSDocs.Azure' -Repository PSGallery -Scope CurrentUser

echo '###########################################################################################'
echo '#'
echo '# Install pandoc'
echo '#'
echo '###########################################################################################'
choco install pandoc
winget install -e --id JohnMacFarlane.Pandoc

echo '###########################################################################################'
choco install docker-desktop