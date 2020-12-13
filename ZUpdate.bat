@ECHO OFF
@echo Started: %date% %time%

set /p commit=Enter Commit: 
echo %commit%


call git pull
call git add .


call git commit -m %date%_%time%_%commit%
call git push origin main -f
PAUSE
