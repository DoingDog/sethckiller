title Sethckiller by NIM
cd /d %~dp0
if not exist config.killer.ini goto :firstUse
:InitComp
for /f "eol=# delims=" %%i in (config.killer.ini) do (%%i)
@echo off&mode con cols=14 lines=1&color c7
cd /d "%startedpath%"&&goto :Installed
cls&color e7&ping -n 5 0.0.0.0 >nul&exit
:Installed
set isLantryStarted=1
:LoopFindSethc
taskkill /f /im %flagc%&&goto :IfLanStarted
cls&goto :LoopFindSethc
:ReStartLantry
set isLantryStarted=1
if defined startedexe1 start %startedexe1%
if defined startedexe2 start %startedexe2%
if defined startedexe3 start %startedexe3%
if defined startedexe4 start %startedexe4%
if defined startedexe5 start %startedexe5%
color c7&goto :LoopFindSethc
:StartKiller
set isLantryStarted=0&cls
if defined killed1 for /l %%i in (1,1,8) do taskkill /f /t /im "%killed1%"
if defined killed2 for /l %%i in (1,1,8) do taskkill /f /t /im "%killed2%"
if defined killed3 for /l %%i in (1,1,8) do taskkill /f /t /im "%killed3%"
if defined killed4 for /l %%i in (1,1,8) do taskkill /f /t /im "%killed4%"
if defined killed5 for /l %%i in (1,1,8) do taskkill /f /t /im "%killed5%"
cls&color a7&goto :LoopFindSethc
:IfLanStarted
if %isLantryStarted%==1 goto :StartKiller
goto :ReStartLantry
:firstUse
echo # config of Sethckiller by NIM>config.killer.ini
echo # ---------------------------------------------------------->>config.killer.ini
echo # CHANGE exes to find below>>config.killer.ini
echo #>>config.killer.ini
echo set flagc=sethc.exe>>config.killer.ini
echo # ---------------------------------------------------------->>config.killer.ini
echo # CHANGE exes to kill below,Max 5 exes>>config.killer.ini
echo # may add like "killed1,2,3...">>config.killer.ini
echo #>>config.killer.ini
echo set killed1=*tuden*>>config.killer.ini
echo # ---------------------------------------------------------->>config.killer.ini
echo # CHANGE where to restart exes below>>config.killer.ini
echo #>>config.killer.ini
echo set startedpath=C:\Program Files\Lantry\Lantry-elearning\>>config.killer.ini
echo # ---------------------------------------------------------->>config.killer.ini
echo # CHANGE exes to restart below,Max 5 exes>>config.killer.ini
echo # may add like "startedexe1,2,3...">>config.killer.ini
echo #>>config.killer.ini
echo set startedexe1=Student.exe>>config.killer.ini
echo set startedexe2=StudentTools.exe>>config.killer.ini
echo # ---------------------------------------------------------->>config.killer.ini
goto :InitComp