
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


echo '###########################################################################################'
choco install docker-desktop