$directory = "C:\Users\JasonWyckoff\OneDrive\Tools\Visio Export\"
$filename = "doc"
$application = New-Object -ComObject Visio.Application
$application.visible = $false
$document = $application.Documents.Open("C:\Users\JasonWyckoff\OneDrive\Tools\Visio Export\doc.vsdx")
$pages = $application.ActiveDocument.Pages
 
mkdir "$directory\output"

for ($i=1; $i -le $pages.count; $i++) {
    $page = $pages.Item($i)
    $pagename = $page.name
    $page.Export("$directory\output\$filename-$pagename.png")
}
 
$application.quit()