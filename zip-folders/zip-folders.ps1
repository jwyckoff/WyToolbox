# (Get-ChildItem c:\temp\* -rec | select-object -ExpandProperty  Length) > j.csv

#$dir = "\\WyNAS\WyPortable\_Master\Local\Archives\10 - Companies\08 - NFIB\repos\AzureDevOps-2019-12-08"
#$dir = "\\WyNAS\WyPortable\_Master\Local\Archives\10 - Companies\08 - NFIB\repos\AzureDevOps-Other"

$dir = "\\WyNAS\WyPortable\_Master\Local\Archives\10 - Companies\08 - NFIB\repos\Bitbucket-2019-12-08"

foreach ($folder in Get-ChildItem $dir -Directory) {

    $name =  $folder.BaseName
    $zip = "${dir}\${name}.zip"
#    echo "Compressing ${folder.BaseName}..."
    echo "Compressing ${zip}..."
    Compress-Archive -LiteralPath $folder.FullName -DestinationPath $zip

    echo ""
}

