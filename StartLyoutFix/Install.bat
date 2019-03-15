rem Implement StartMenu
cmd /c powershell.exe -executionpolicy bypass -command Import-StartLayout -LayoutPath C:\Nathcorp\Layout\LayoutModification.xml -MountPath C:\
schtasks.exe /Create /XML "c:\nathcorp\layout\NCLayout.xml" /tn NCSLayout
schtasks /run /tn "NCSLayout"
