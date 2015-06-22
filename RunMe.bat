diskpart /s %~dp0diskpart.txt
Dism /apply-image /imagefile:%CD%\fake.wim /index:1 /ApplyDir:C:\
C:\Windows\System32\bcdboot C:\Windows /l en-US
xcopy %~dp0fake.wim R:\CustomRefresh.wim
cd C:\Windows\System32
C:
recimg /setcurrent R:\
recimg /setcurrent D:\