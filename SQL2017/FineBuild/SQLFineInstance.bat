@ECHO OFF
REM Copyright FineBuild Team � 2015 - 2016.  Distributed under Ms-Pl License
REM
CALL "SQLFineBuild.bat" %*     /Type:Full                    /IAcceptLicenseTerms          ^
 /SAPWD:"UseAL0ngPa55phrase!"  /GroupDBA:"GBGGDBAS01"        /GroupDBANonSA:"GBGGDBAN01"   ^
 /Instance:HR                  /TCPPort:8950                 ^
 /VolProg:C          ^
 /VolBackup:I  /VolData:JF  /VolDataFT:F  /VolLog:KG   /VolTemp:T                          ^
 /SQLSVCAccount:"ROOT\ServGB_SQLDB_1$"    ^
 /AGTSVCACCOUNT:"ROOT\ServGB_SQLAG_1$"    ^
 /FTSVCACCOUNT:"ROOT\ServGB_SQLFT_1$"     ^
 /SETUPCMDSHELL:YES  ^
 /CMDSHELLACCOUNT:"ROOT\APPGB_SQLCS_0002" /CMDSHELLPASSWORD:"He$dW2zdlh7Ge2cDu0*t"
