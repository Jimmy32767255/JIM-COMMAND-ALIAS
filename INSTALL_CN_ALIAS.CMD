@echo off

setlocal

REM 获取当前脚本所在目录
set "CURRENT_DIR=%~dp0"

REM 提示用户确认安装
echo 即将安装中文命令别名...
echo 按任意键继续，或按Ctrl+C取消。
pause >nul

REM 将当前目录添加到PATH环境变量
setx PATH "%CURRENT_DIR%CN_ALIAS;%PATH%"

echo 中文命令别名已成功安装！
endlocal