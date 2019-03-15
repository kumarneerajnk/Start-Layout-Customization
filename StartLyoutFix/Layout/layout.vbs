command = "powershell.exe -executionpolicy remotesigned -nologo -command C:\nathcorp\layout\layout.ps1"
set shell = CreateObject("WScript.Shell")
shell.Run command,0