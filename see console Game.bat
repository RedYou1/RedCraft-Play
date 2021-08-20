@echo off
set /p name=Wich name?: 
java -Xms512M -Xmx1024M -jar Game.jar "%name%" "C:\Users\jcdem\OneDrive\Bureau\RedCraft third writing\Games\test"
pause