@ECHO OFF & TITLE ps3-disc-dumper loader

REM Use this batch-script file to run the "ps3-disc-dumper.exe" program without the UAC restriction.

SET "execName=ps3-disc-dumper"

IF NOT EXIST "%~dp0%execName%.exe" (
    ECHO:Cannot find file: "%~dp0%execName%.exe"
    ECHO:This program will close now...
    PAUSE
    EXIT 1
)

START /B "%execName%" "%~dp0%execName%.exe" ^
         "/IUnderstandThatRunningSoftwareAsAdministratorIsDangerousAndNotRecommendedForAnyone"

EXIT 0