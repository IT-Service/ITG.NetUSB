call "%VS110COMNTOOLS%VsDevCmd.bat"

"%ProgramFiles(x86)%\Windows Kits\8.1\bin\x86\inf2cat" /driver:. /os:XP_X86,Server2003_X86,Vista_X86,7_X86,8_X86,6_3_X86

rem signtool sign /a /t http://timestamp.verisign.com/scripts/timstamp.dll usboip.cat
