@ECHO OFF & TITLE PS3 Disc Dumper loader v1.2

REM These variable defiitions let you specify 
REM a custom file name and directory path.

SET "fileName=ps3-disc-dumper.exe"
SET "dirPath=%~dp0"

REM Here we check whether the file exists.

SET "fullPath=%dirPath%\%fileName%"
IF NOT EXIST "%fullPath%" (
    ECHO:Cannot find file: "%fullPath%"
    ECHO:This program will close now...
    PAUSE
    EXIT /B 1
)

REM Uncomment the next line if you want to 
REM clean any previously generated log files.
:: DEL /Q "%dirPath%\logs\*.log" 2>NUL

REM Uncomment all the next block of lines if you want to
REM apply these (or your own) default program settings.

:: SET "outputDirName=output"
:: SET "irdDirName=ird"
:: 
:: MKDIR "%dirPath%\%outputDirName%" 2>NUL
:: MKDIR "%dirPath%\%irdDirName%"    2>NUL
:: 
:: MKDIR "%LocalAppData%\ps3-disc-dumper" 2>NUL
:: (
::   ECHO:{
::   ECHO:  "OutputDir"^: "%outputDirName%",
::   ECHO:  "IrdDir"^: "%irdDirName%",
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

PUSHD "%dirPath%"
START /B "PS3 Disc Dumper" ^
         "%fullPath%" ^
         "/IUnderstandThatRunningSoftwareAsAdministratorIsDangerousAndNotRecommendedForAnyone"

REM Uncomment the next line if you want to 
REM pause code execution for any reason.
:: PAUSE

EXIT /B 0
