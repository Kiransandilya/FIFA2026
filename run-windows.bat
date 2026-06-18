@echo off
REM World Cup 26 - widget launcher (Windows)
REM Double-click to open the widget in a small, frameless app window.
setlocal

set "URL=file:///%~dp0fifa_widget.html"
set "URL=%URL:\=/%"
set "PROFILE=%LOCALAPPDATA%\wc26-widget"

for %%B in (
  "%ProgramFiles%\Google\Chrome\Application\chrome.exe"
  "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe"
  "%LOCALAPPDATA%\Google\Chrome\Application\chrome.exe"
  "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe"
  "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe"
) do (
  if exist "%%~B" (
    start "" "%%~B" --app="%URL%" --window-size=384,680 --user-data-dir="%PROFILE%"
    exit /b
  )
)

echo Couldn't find Chrome or Edge. Open fifa_widget.html in your browser instead.
pause
