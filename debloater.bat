@echo off
color 04
title Debloater
cls
echo What do you wish to do?:
echo Note: Launch this batch file in Administrator mode 
:start
echo   [1] Debloat
echo   [2] Restore
set /P choice=1 or 2?
if '%choice%'=='1' goto :debloat
if '%choice%'=='2' goto :restore
:restore
Powershell -Command "Get-AppxPackage | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}"
echo This can be used only once!
pause > nul
goto start
:debloat
echo Debloating...
Powershell -Command "Get-AppxPackage *3dbuilder* | Remove-AppxPackage"
echo [#                ]
Powershell -Command "Get-AppxPackage *windowscommunicationsapps* | Remove-AppxPackage"
echo [##               ]
Powershell -Command "Get-AppxPackage *windowscamera* | Remove-AppxPackage"
echo [###              ]
Powershell -Command "Get-AppxPackage *officehub* | Remove-AppxPackage"
echo [####             ]
Powershell -Command "Get-AppxPackage *skypeapp* | Remove-AppxPackage"
echo [#####            ]
Powershell -Command "Get-AppxPackage *zunemusic* | Remove-AppxPackage"
echo [######           ]
Powershell -Command "Get-AppxPackage *windowsmaps* | Remove-AppxPackage"
echo [#######          ]
Powershell -Command "Get-AppxPackage *solitairecollection* | Remove-AppxPackage"
echo [########         ]
Powershell -Command "Get-AppxPackage *bingfinance* | Remove-AppxPackage"
echo [#########        ]
Powershell -Command "Get-AppxPackage *zunevideo* | Remove-AppxPackage"
echo [##########       ]
Powershell -Command "Get-AppxPackage *bingnews* | Remove-AppxPackage"
echo [###########      ]
Powershell -Command "Get-AppxPackage *onenote* | Remove-AppxPackage"
echo [############     ]
Powershell -Command "Get-AppxPackage *windowsphone* | Remove-AppxPackage"
echo [#############    ]
Powershell -Command "Get-AppxPackage *bingsports* | Remove-AppxPackage"
echo [##############   ]
Powershell -Command "Get-AppxPackage *bingweather* | Remove-AppxPackage"
echo [###############  ]
Powershell -Command "Get-AppxPackage *soundrecorder* | Remove-AppxPackage"
echo [################ ]
Powershell -Command "Get-AppxPackage *Microsoft.WindowsAlarms* | Remove-AppxPackage"
echo [#################]
echo Should be done
echo Your PC will restart in 5 seconds
SHUTDOWN -r -t 5
pause > nul
