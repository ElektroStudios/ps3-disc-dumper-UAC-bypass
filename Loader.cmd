@ECHO OFF & TITLE ps3-disc-dumper loader v1.1

REM These variables let you specify a custom file name and directory path.

SET "fileName=ps3-disc-dumper.exe"
SET "dirPath=%~dp0"

REM We check whether the file exists.

SET "fullPath=%dirPath%\%fileName%"
IF NOT EXIST "%fullPath%" (
    ECHO:Cannot find file: "%fullPath%"
    ECHO:This program will close now...
    PAUSE
    EXIT 1
)

REM Uncomment all the next lines starting with "::" if you wat to set custom default program settings:

:: MKDIR "%LocalAppData%\ps3-disc-dumper" 2>NUL
:: MKDIR "%~dp0output" 2>NUL
:: MKDIR "%~dp0ird" 2>NUL
:: 
:: (
::   ECHO:{
::   ECHO:  "OutputDir"^: "output",
::   ECHO:  "IrdDir"^: "ird",
::   ECHO:  "DumpNameTemplate"^: "%%title%% [%%product_code%%]",
::   ECHO:  "ShowDetails"^: true,
::   ECHO:  "EnableTransparency"^: false,
::   ECHO:  "PreferSystemAccent"^: false,
::   ECHO:  "StayOnTop"^: false,
::   ECHO:  "CopyBdmv"^: true,
::   ECHO:  "CopyPs3Update"^: false
::   ECHO:}
:: )>"%LocalAppData%\ps3-disc-dumper\settings.json"

REM Finally, we run the program with the special command-line switch.

(START /B "%fileName%" "%fullPath%" ^
         "/IUnderstandThatRunningSoftwareAsAdministratorIsDangerousAndNotRecommendedForAnyone"
) && (
    EXIT 0
)
