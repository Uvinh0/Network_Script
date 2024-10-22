@echo off
REM *****************************************************************************
REM Programador..: Joel Veiga
REM Data.........: 21/10/2024
REM Descrição....: CMD
REM Observaçã....:Nenhuma
REM *****************************************************************************

:MENU
cls
color 5
echo ##############################
echo # (c) 2024 Joel Veiga        #
echo ##############################

echo ==================Menu====================
echo    1 - Mostrar a lista de arquivos
echo    2 - Mostrar diretorio atual 
echo    3 - Criar um diretorio
echo    4 - Excluir um diretorio 
echo    5 - Limpar a tela
echo    6 - Mostrar informacoes do sistema
echo    7 - Mostrar todos os IPs
echo    8 - renova os IPs
echo    9 - Servidor de DNS
echo    10 - Mostrar MAC address
echo    11 - File/App Asociation
echo    12 - Disc_repair
echo    13 - Ping URL
echo    14 - Users to File
echo    15 - Sair

set /p opt="Escolha uma opcao e pressione Enter: "

if %opt% == 1 goto Lista_Arquivos
if %opt% == 2 goto Mostrar_Diretorio_Atual
if %opt% == 3 goto Criar_Diretorio
if %opt% == 4 goto Excluir_Diretorio
if %opt% == 5 goto Limpar_Tela
if %opt% == 6 goto Mostrar_Informacoes_Sistema
if %opt% == 7 goto Mostrar_todos_os_IPs
if %opt% == 8 goto RENEW_IP
if %opt% == 9 goto DNS_Query
if %opt% == 10 goto Mostrar_MAC_address
if %opt% == 11 goto File_App_Association
if %opt% == 12 goto Disc_repair
if %opt% == 13 goto Ping_URL
if %opt% == 14 goto Users_to_File
if %opt% == 15 goto Sair

goto MENU

:Lista_Arquivos
dir
pause
goto MENU

:Mostrar_Diretorio_Atual
cd
pause
goto MENU

:Criar_Diretorio
set /p dir="Digite o nome do diretorio a ser criado: "
mkdir %dir%
echo Diretório %dir% criado com sucesso!
pause
goto MENU

:Excluir_Diretorio
set /p dir="Digite o nome do diretorio a ser excluído: "
rmdir %dir%
echo Diretório %dir% excluído com sucesso!
pause
goto MENU

:Limpar_Tela
cls
pause
goto MENU

:Mostrar_Informacoes_Sistema
systeminfo
pause
goto MENU

:Mostrar_todos_os_IPs
ipconfig /all
pause
goto MENU

:RENEW_IP
ipconfig /realese
pause
ipconfig /rew 
pause
goto Menu

:DNS_Query
set /p domain="Insert domain:"
set /p DNSserver="Insert DNSserver:"
nslookup %domain% %DNSserver%
pause
goto MENU

:Mostrar_MAC_address
getMAC 
pause
goto MENU

:File_App_Association
assoc > output.txt
pause
goto Menu

:Disc_repair
CHKDSK /f /r
pause
goto Menu

:Ping_URL
set /p URL="Insert URL :"
ping %URL%
pause
goto Menu

:Users_to_File
net user > user.txt
pause
goto Menu

:Sair
echo Obrigado por usar o script!
timeout /t 3 >nul
exit /b 0
