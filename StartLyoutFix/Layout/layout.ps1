if (-NOT (Test-Path $env:userprofile\AppData\slayout.txt))
{
reg delete HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\CloudStore\Store /f
$Source = 'c:\NathCorp\Layout\LayoutModification.xml'
$Destination = 'C:\users\*\AppData\Local\Microsoft\Windows\shell'
Get-ChildItem $Destination | ForEach-Object {Copy-Item -Path $Source -Destination $_ -Force}
new-item $env:userprofile\AppData\slayout.txt -type file
}