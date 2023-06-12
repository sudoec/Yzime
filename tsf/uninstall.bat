%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d "%~dp0"
if %PROCESSOR_ARCHITECTURE%==x86 goto x86
	regsvr32 /u Yzime64.dll

:x86
regsvr32 /u Yzime.dll