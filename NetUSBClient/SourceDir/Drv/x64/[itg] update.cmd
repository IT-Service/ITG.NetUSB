call "%VS110COMNTOOLS%VsDevCmd.bat"

inf2cat /driver:. /os:XP_X86,XP_X64,Vista_X86,Vista_X64,7_X86,7_X64,8_X86,8_X64 

signtool sign /a /t http://timestamp.verisign.com/scripts/timstamp.dll usboip.cat
