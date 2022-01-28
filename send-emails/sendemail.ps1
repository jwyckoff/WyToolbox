# $User = "jason@thewyckoffs.net"
# $temp = 'zhteizuasjlecsdy' # jason@thewyckoffs.net 

$User = "jwyckoff@gmail.com"
$temp = 'thgsclebgjnxdeop' # jwyckoff@gmail.com 

$SMTPServer = "smtp.gmail.com"
$SMTPPort = "587"
$newLine = "`r`n"
$PWord = ConvertTo-SecureString -String $temp -AsPlainText -Force
$Credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $User, $PWord

$domains = 
    "wyckoffgenealogy.org," + `
    "jasonwyckoff.com," + `
    "mileswyckoff.com," + `
    "wyckoff.io," + `
    "wyazure.com," + `
    "streamvalley.org," + `
    "ellawyckoff.com," + `
    "konnicklalonde.com"

$nameAtDomain = "temp"

##############################################################################

$emails = ""
Foreach ($domain in $domains -split ',') { 


    $emails = $emails + "$nameAtDomain@$domain,"
}


echo $emails
##############################################################################

$i = 1
$emailArray = $emails -split ','
$From = "jwyckoff@gmail.com"
$TodayDate = Get-Date -Format MM/dd

Foreach ($To in $emailArray) { 

    $Subject = "Test {0} {1} ({2}/{3})" -f `
        $TodayDate, `
        $To, `
        $i, `
        $emailArray.Length

    $Body = $Body + $Subject + $newLine
    $i = $i + 1
}

$i = 1

Foreach ($To in $emailArray) { 
    echo "##############################################################################"
    echo "#"
    echo "# $To"
    echo "#"
    echo "##############################################################################"
    echo ""

    $Subject = "Test {0} {1} ({2}/{3})" -f `
        $TodayDate, `
        $To, `
        $i, `
        $emailArray.Length
    
    $Summary = $Summary + $Subject + $newLine

    Send-MailMessage -From $From -to $To -Subject $Subject -Body `
        $Body -SmtpServer $SMTPServer -port $SMTPPort -UseSsl -Credential $Credential

    $i = $i + 1
}

echo $Body


##############################################################################