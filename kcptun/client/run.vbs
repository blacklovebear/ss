Dim RunKcptun
Set fso = CreateObject("Scripting.FileSystemObject")
Set WshShell = WScript.CreateObject("WScript.Shell")
'获取文件路径
currentPath = fso.GetFile(Wscript.ScriptFullName).ParentFolder.Path & "\"
'软件运行参数
exeConfig = "client_windows_amd64.exe -l :12948 -r xx.xx.xx.xx:29900 -key test -mtu 1400 -sndwnd 256 -rcvwnd 2048 -mode fast2 -conn 4"
'日志文件
logFile = "kcptun.log"
'拼接命令行
cmdLine = "cmd /c " & currentPath & exeConfig  & " > " & currentPath & logFile & " 2>&1"
'启动软件
WshShell.Run cmdLine, 0, False
'等待1秒
'WScript.Sleep 1000
'打印运行命令
'Wscript.echo cmdLine
Set WshShell = Nothing
Set fso = Nothing
'退出脚本
WScript.quit