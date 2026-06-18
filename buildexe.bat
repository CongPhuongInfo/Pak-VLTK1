@echo off
setlocal enabledelayedexpansion

set "FRAMEWORK_BASE=C:\Windows\Microsoft.NET\Framework64"
set "CSC="

rem Duyet tu 4.8 xuong 4.0, lay phien ban cao nhat duoc cai
for %%V in (4.8 4.7.2 4.7.1 4.7 4.6.2 4.6.1 4.6 4.5.2 4.5.1 4.5 4.0) do (
    if "!CSC!"=="" (
        for /d %%D in ("%FRAMEWORK_BASE%\v%%V*") do (
            if exist "%%D\csc.exe" (
                set "CSC=%%D\csc.exe"
            )
        )
    )
)

rem Neu khong tim duoc thi thu Framework 32-bit
if "%CSC%"=="" (
    set "FRAMEWORK_BASE=C:\Windows\Microsoft.NET\Framework"
    for %%V in (4.8 4.7.2 4.7.1 4.7 4.6.2 4.6.1 4.6 4.5.2 4.5.1 4.5 4.0) do (
        if "!CSC!"=="" (
            for /d %%D in ("%FRAMEWORK_BASE%\v%%V*") do (
                if exist "%%D\csc.exe" (
                    set "CSC=%%D\csc.exe"
                )
            )
        )
    )
)

if "!CSC!"=="" (
    echo [ERROR] Khong tim thay csc.exe cua .NET Framework 4.x
    exit /b 1
)

echo [INFO] Dung compiler: !CSC!

"!CSC!" ^
/target:exe ^
/optimize+ ^
/platform:x86 ^
/out:%cd%\ZPackTool.exe ^
%cd%\ZPackTool.cs UclNative.cs

endlocal
