


# *.otf, *.afm, *.pfm, *.TTF


$fontFolder = "C:\_Data\OneDrive\Tools\Fonts"

# $fonts = Get-ChildItem -Recurse $fontFolder -Include *.otf, *.afm, *.pfm, *.TTF | Where {! $_.PSIsContainer } | Select FullName
$fonts = Get-ChildItem -Recurse $fontFolder -Include *.otf, *.afm, *.pfm, *.TTF | Where {! $_.PSIsContainer }

foreach ($font in $fonts) {
    
    


    if (-not(Test-Path -Path "C:\Windows\fonts\${font.Name}" )) {
        echo $font.Name
        dir $file | %{ $fonts.CopyHere($_.fullname) }
    }
}

$fileName = $file.Name
    if (-not(Test-Path -Path "C:\Windows\fonts\$fileName" )) {
        echo $fileName
        dir $file | %{ $fonts.CopyHere($_.fullname) }
    }


echo $foo 

