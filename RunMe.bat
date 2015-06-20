diskpart /s %~dp0diskpart.txt
Dism /apply-image /imagefile:%CD%\fake.wim /index:1 /ApplyDir:C:\
C:\Windows\System32\bcdboot C:\Windows /l en-US