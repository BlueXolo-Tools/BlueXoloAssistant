@echo off

title Run Botpress Server

:: Use tag from argument (v12_15_1 as default)
if [%1]==[] ( set TAG=v12_15_1 ) else ( set TAG=%1 )

:: Local botpress data directory
cd ..
set DATA_DIR=%cd%\data

:: Run Botpress Server docker image
docker run -d --rm -p 3000:3000 -h bluexolo-assistant --name bluexolo-assistant -v %DATA_DIR%:/botpress/data botpress/server:%TAG%
