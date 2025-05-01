@echo off

setlocal

REM 获取当前脚本所在目录
set "CURRENT_DIR=%~dp0"

REM 提示用户确认卸载
echo 即将卸载中文命令别名...
echo 按任意键继续，或按Ctrl+C取消。
pause >nul

REM 从PATH环境变量中移除当前目录
set "NEW_PATH=%PATH:;%CURRENT_DIR%CN_ALIAS=%"
setx PATH "%NEW_PATH%"

echo 中文命令别名已成功卸载！
endlocal