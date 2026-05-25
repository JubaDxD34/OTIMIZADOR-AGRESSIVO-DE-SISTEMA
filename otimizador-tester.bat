@echo off
title OTIMIZADOR juba
color 0a
setlocal enabledelayedexpansion

:inicio
cls
echo ===================================================
echo        OTIMIZADOR AGRESSIVO DE SISTEMA
echo ===================================================
echo.

:: Tela de loading estilizada
call :loading "INICIANDO OTIMIZACAO..."

:: 1. Limpeza de arquivos temporários
call :etapa "Limpando arquivos temporários..." "del /q /f /s %temp%\* && del /q /f /s C:\Windows\Temp\*"

:: 2. Limpeza de Prefetch e Lixeira
call :etapa "Limpando Prefetch e Lixeira..." "del /q /f /s C:\Windows\Prefetch\* && rd /s /q %systemdrive%\$Recycle.bin"

:: 3. Limpeza de cache de DNS
call :etapa "Limpando cache de DNS..." "ipconfig /flushdns"

:: 4. Reset cache Windows Update
call :etapa "Limpando cache do Windows Update..." "net stop wuauserv && net stop bits && del /q /f /s C:\Windows\SoftwareDistribution\Download\* && net start wuauserv && net start bits"

:: 5. SFC + DISM
call :etapa "Verificando arquivos do sistema..." "sfc /scannow && DISM /Online /Cleanup-Image /RestoreHealth"

:: 6. Matar processos inúteis
call :etapa "Finalizando processos inúteis..." "taskkill /f /im OneDrive.exe && taskkill /f /im SearchUI.exe && taskkill /f /im RuntimeBroker.exe && taskkill /f /im YourPhone.exe && taskkill /f /im XboxApp.exe"

:: 7. Desativar telemetria
call :etapa "Desativando telemetria..." "sc stop DiagTrack && sc config DiagTrack start= disabled && sc stop dmwappushservice && sc config dmwappushservice start= disabled"

:: 8. Desativar SysMain (Superfetch)
call :etapa "Desativando SysMain (Superfetch)..." "sc stop SysMain && sc config SysMain start= disabled"

:: 9. Ativar Plano de Energia de Alto Desempenho
call :etapa "Ativando Plano de Alto Desempenho..." "powercfg -setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c"

:: 10. Verificação malware
call :etapa "Verificando malware..." "\"%ProgramFiles%\Windows Defender\MpCmdRun.exe\" -Scan -ScanType 1"

:: 11. Otimizacao de SSD/HD (TRIM/Defrag)
call :etapa "Otimizando unidades de disco..." "defrag C: /O"

:: 12. Checagem disco
call :etapa "Verificando disco..." "echo S | chkdsk C: /f" 

echo.
echo ===================================================
echo               OK, FEITO ✅
echo ===================================================
echo.
pause
exit /b

:: ----------- FUNÇÕES -----------

:loading
set "msg=%~1"
cls
echo %msg%
set "bar="
for /l %%i in (1,1,30) do (
    set "bar=!bar!#"
    cls
    echo %msg%
    echo [!bar!]
    ping -n 1 localhost >nul
)
exit /b

:etapa
set "msg=%~1"
set "cmd=%~2"
echo %msg%
%cmd% >nul 2>&1
if %errorlevel%==0 (
    echo [OK ✅]
) else (
    echo [ERRO ❌]
    set /p retry="Deseja tentar novamente (S/N)? "
    if /i "!retry!"=="S" (
        goto :etapa
    )
)
echo.
exit /b