# (Get-ChildItem c:\temp\* -rec | select-object -ExpandProperty  Length) > j.csv


$foo = Get-ChildItem c:\temp\* -rec

echo $foo