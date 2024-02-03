@ECHO OFF & TITLE PS3 Disc Dumper loader v1.1

REM These variables let you specify a custom file name and directory path.

SET "fileName=ps3-disc-dumper1.exe"
SET "dirPath=%~dp0"

REM We check whether the file exists.

SET "fullPath=%dirPath%\%fileName%"
IF NOT EXIST "%fullPath%" (
    ECHO:Cannot find file: "%fullPath%"
    ECHO:This program will close now...
    PAUSE
    EXIT /B 1
)

REM Uncomment all the next lines starting with "::" characters
REM only if you want to apply these (or your own) default program settings.

:: MKDIR "%LocalAppData%\ps3-disc-dumper" 2>NUL
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
:: 
:: REM With this we try to ensure that the "OutputDir" and "IrdDir" directories are created.
:: MKDIR "%dirPath%\output" 2>NUL
:: MKDIR "%dirPath%\ird"    2>NUL

REM Finally, we run the program with the special command-line switch.

PUSHD "%dirPath%"
START /B "PS3 Disc Dumper" ^
         "%fullPath%" ^
         "/IUnderstandThatRunningSoftwareAsAdministratorIsDangerousAndNotRecommendedForAnyone"

REM PAUSE
EXIT /B 0
