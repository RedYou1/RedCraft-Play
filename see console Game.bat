@echo off
set /p name=Wich name?: 
java -Xms512M -Xmx1024M -jar Game.jar "%name%" "Games\test"
pause