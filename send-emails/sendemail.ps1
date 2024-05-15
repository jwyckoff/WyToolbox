# $user = "jason@thewyckoffs.net"
# $temp = 'zhteizuasjlecsdy' # jason@thewyckoffs.net 

$user = "jwyckoff@outlook.com"
$temp = 'ikzbxfrarhcvlaax' 

$smtpServer = "smtp-mail.outlook.com"
$smtpPort = "587"
$newLine = "`r`n"
$PWord = ConvertTo-SecureString -String $temp -AsPlainText -Force
$Credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $user, $PWord
$Body = ""
# create a string array of domains
$domains = @(
    "wyckoffgenealogy.org",
    "jasonwyckoff.com",  
    "wyckoff.io",  
    "wyazure.com",  
    "konnicklalonde.com")

# "mileswyckoff.com",  
# "ellawyckoff.com",  

$nameAtDomains = @(
    "jason")
#"temp", 

##############################################################################

$emailArray = @()

foreach ($name in $nameAtDomains) {
    foreach ($domain in $domains) {
        $emailArray += "$name@$domain"
    }
}

Write-Host "Total emails: $($emailArray.Length)"
$i = 1
$From = $user
$TodayDate = Get-Date -Format "yyyyMMddHHmmss"

$emailsToSend = @()
$bodyContents = @()

foreach ($To in $emailArray) { 

    $Subject = "$To ($i/$($emailArray.Length)) -- Test $TodayDate "
    # add new custom object to array
    $emailsToSend += [PSCustomObject]@{
        To      = $To
        Subject = $Subject 
    }

    $bodyContents += [PSCustomObject]@{
        Num = $i
        To  = $To
    }
    $i++
}

# build a an html table for the body, with the contents of the bodyContents array
$Body = "<table>"
$Body += "<tr><th>Num</th><th>To</th></tr>"
foreach ($bodyContent in $bodyContents) {
    $Body += "<tr><td>$($bodyContent.Num)</td><td>$($bodyContent.To)</td></tr>"
}
$Body += "</table>"



Foreach ($emailToSend in $emailsToSend) { 
    echo "##############################################################################"
    echo "#"
    echo "# $($emailToSend.To)"
    echo "#"
    echo "##############################################################################"
    echo ""


    Send-MailMessage -From $From -to $($emailToSend.To) -Subject $($emailToSend.Subject) -Body $Body -smtpServer $smtpServer -port $smtpPort -UseSsl -Credential $Credential -BodyAsHtml

    $i = $i + 1
}

##############################################################################