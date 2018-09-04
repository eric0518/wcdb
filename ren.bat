@echo off

set DIR=%~dp0
set ROOT=%DIR%

for /f "delims=" %%f in ('dir  /b/a-d/s  %ROOT%\*.mm') do (

echo %%f
ren %%f *.cpp

)

pause