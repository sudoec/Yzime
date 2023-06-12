%1 mshta vbscript:CreateObject("Shell.Application").ShellExecute("cmd.exe","/c %~s0 ::","","runas",1)(window.close)&&exit
cd /d "%~dp0"
regsvr32 Yzime.dll
if %PROCESSOR_ARCHITECTURE%==x86 goto end 
	regsvr32 Yzime64.dll
:end
