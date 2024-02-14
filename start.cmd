@echo off
 
REM 运行 xptovista.exe
start /wait xptovista.exe
 
REM 复制 Themes 文件夹到 C:\WINDOWS\Resources
xcopy /E /Y "%~dp0Themes" "C:\WINDOWS\Resources\Themes"
 
REM 复制 BootScreens 文件夹到 C:\WINDOWS\Resources
xcopy /E /Y "%~dp0BootScreens" "C:\WINDOWS\Resources\BootScreens"
 
REM 复制 Wallpaper 文件夹中的所有文件到 C:\Windows\Web\Wallpaper
xcopy /E /Y "%~dp0Wallpaper\*" "C:\Windows\Web\Wallpaper"
 
REM 复制 7-Zip 文件夹到 C:\Program Files
xcopy /E /Y "%~dp07-Zip" "C:\Program Files\7-Zip"
 
REM 复制 BootXP2 文件夹到 C:\Program Files
xcopy /E /Y "%~dp0BootXP2" "C:\Program Files\BootXP2"
 
REM 复制 scr 文件夹中的所有内容到 C:\Windows\System32
xcopy /E /Y "%~dp0scr\*" "C:\Windows\System32"
 
REM 运行 setup.cmd
start "" /D "%~dp0yahei_font" "setup.cmd"
 
echo 完成复制和运行操作
pause
