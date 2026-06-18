@echo off

:: Ví dụ khi tệp bị lỗi Encoding phải dò thủ công
::ZPackTool unpack game.pack ./extracted Moon.txt gbk
::ZPackTool unpack game.pack ./extracted Moon.txt utf-8
::ZPackTool unpack game.pack ./extracted Moon.txt 936



::"%cd%\ZPackTool.exe" unpack "%cd%\Data\script.pak" "%cd%\_input" "%cd%\HashList\Script.pak.txt"
"%cd%\ZPackTool.exe" unpack "%cd%\Data\updatevlml.pak" "%cd%\_input"

pause >nul
