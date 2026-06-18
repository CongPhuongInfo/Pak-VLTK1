@echo off

rem Khong nen (mac dinh) ZPackTool pack ./data game.pack
rem Nen UCL level 5 (mac dinh) ZPackTool pack ./data game.pack ucl
rem Nen UCL manh nhat ZPackTool pack ./data game.pack ucl 9

"%cd%\ZPackTool.exe" pack "%cd%\_input" "%cd%\_output\script.pak" ucl

pause >nul
