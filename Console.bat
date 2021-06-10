:start
@echo OFF
title Console
:admin
cls
echo " _    _      _                            _          _   _            _____                       _      ";
echo "| |  | |    | |                          | |        | | | |          /  __ \                     | |     ";
echo "| |  | | ___| | ___ ___  _ __ ___   ___  | |_ ___   | |_| |__   ___  | /  \/ ___  _ __  ___  ___ | | ___ ";
echo "| |/\| |/ _ \ |/ __/ _ \| '_ ` _ \ / _ \ | __/ _ \  | __| '_ \ / _ \ | |    / _ \| '_ \/ __|/ _ \| |/ _ \";
echo "\  /\  /  __/ | (_| (_) | | | | | |  __/ | || (_) | | |_| | | |  __/ | \__/\ (_) | | | \__ \ (_) | |  __/";
echo " \/  \/ \___|_|\___\___/|_| |_| |_|\___|  \__\___/   \__|_| |_|\___|  \____/\___/|_| |_|___/\___/|_|\___|";
echo "													  ";

set curCon=adCon
set /p adCon=%username%@AdminConsole $
if /I "%adCon%" EQU "help" goto :adHelp
if /I "%adCon%" EQU "show" goto :show
if /I "%adCon%" EQU "hide" goto :hide
if /I "%adCon%" EQU "cls" goto :cls
if /I "%adCon%" EQU "ver" goto :ver
if /I "%adCon%" EQU "nice" goto :nice
if /I "%adCon%" EQU "extra" goto :extra
if /I "%adCon%" EQU "goto" goto :pointer
if /I "%adCon%" EQU "swap" goto :run
if /I "%adCon%" EQU "edit" goto :edit
if /I "%adCon%" EQU "matrix" goto :matrixyn
if /I "%adCon%" EQU "ran" goto :rnnum
goto :Error

:rnNum
echo Num 1:
echo %random%
echo Num 2:
echo %random%%random%
echo Num 10:
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo Num 15:
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
echo Num 40:
echo %random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%%random%
goto :%curCon%

:extra
echo			This command is WIP, this will be deleted once the command works
set /p variableToSet=Enter variable name:
set /p %variableToSet%=Enter variable data:
echo SUCCESSFULLY SET variable to %variableToSet%
goto :%curCon%

:matrixyn
echo If you run this you will not be able to exit and will have to start a new window
set /p Yn=Are you sure you want to do this? [Y/N]
if /I "%Yn%" EQU "Y" goto :matrix
if /I "%Yn%" EQU "N" goto :%curCon%
goto :%curCon%

:matrix
color 2
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
goto :matrix


:nice
echo "NNNNNNNN        NNNNNNNN  iiii                                          ";
echo "N:::::::N       N::::::N i::::i                                         ";
echo "N::::::::N      N::::::N  iiii                                          ";
echo "N:::::::::N     N::::::N                                                ";
echo "N::::::::::N    N::::::Niiiiiii     cccccccccccccccc    eeeeeeeeeeee    ";
echo "N:::::::::::N   N::::::Ni:::::i   cc:::::::::::::::c  ee::::::::::::ee  ";
echo "N:::::::N::::N  N::::::N i::::i  c:::::::::::::::::c e::::::eeeee:::::ee";
echo "N::::::N N::::N N::::::N i::::i c:::::::cccccc:::::ce::::::e     e:::::e";
echo "N::::::N  N::::N:::::::N i::::i c::::::c     ccccccce:::::::eeeee::::::e";
echo "N::::::N   N:::::::::::N i::::i c:::::c             e:::::::::::::::::e ";
echo "N::::::N    N::::::::::N i::::i c:::::c             e::::::eeeeeeeeeee  ";
echo "N::::::N     N:::::::::N i::::i c::::::c     ccccccce:::::::e           ";
echo "N::::::N      N::::::::Ni::::::ic:::::::cccccc:::::ce::::::::e          ";
echo "N::::::N       N:::::::Ni::::::i c:::::::::::::::::c e::::::::eeeeeeee  ";
echo "N::::::N        N::::::Ni::::::i  cc:::::::::::::::c  ee:::::::::::::e  ";
echo "NNNNNNNN         NNNNNNNiiiiiiii    cccccccccccccccc    eeeeeeeeeeeeee  ";
goto :%curCon%

:nice1
echo "NNNNNNNN        NNNNNNNN  iiii                                          ";
echo "N:::::::N       N::::::N i::::i                                         ";
echo "N::::::::N      N::::::N  iiii                                          ";
echo "N:::::::::N     N::::::N                                                ";
echo "N::::::::::N    N::::::Niiiiiii     cccccccccccccccc    eeeeeeeeeeee    ";
echo "N:::::::::::N   N::::::Ni:::::i   cc:::::::::::::::c  ee::::::::::::ee  ";
echo "N:::::::N::::N  N::::::N i::::i  c:::::::::::::::::c e::::::eeeee:::::ee";
echo "N::::::N N::::N N::::::N i::::i c:::::::cccccc:::::ce::::::e     e:::::e";
echo "N::::::N  N::::N:::::::N i::::i c::::::c     ccccccce:::::::eeeee::::::e";
echo "N::::::N   N:::::::::::N i::::i c:::::c             e:::::::::::::::::e ";
echo "N::::::N    N::::::::::N i::::i c:::::c             e::::::eeeeeeeeeee  ";
echo "N::::::N     N:::::::::N i::::i c::::::c     ccccccce:::::::e           ";
echo "N::::::N      N::::::::Ni::::::ic:::::::cccccc:::::ce::::::::e          ";
echo "N::::::N       N:::::::Ni::::::i c:::::::::::::::::c e::::::::eeeeeeee  ";
echo "N::::::N        N::::::Ni::::::i  cc:::::::::::::::c  ee:::::::::::::e  ";
echo "NNNNNNNN         NNNNNNNiiiiiiii    cccccccccccccccc    eeeeeeeeeeeeee  ";
goto :%curCon%

:pointer
set /p pointer=$
goto %pointer%

:ver
echo "Console: Release 1 [Beta Version 1.03] "
goto :%curCon%

:Error
echo "%adCon% IS NOT A VALID COMMAND"
echo "TYPE HELP FOR COMMAND LIST"
goto :%curCon%

:show
:echo1
@echo ON
goto :%curCon%

:edit
Notepad "C:\Users\downingw24\OneDrive - Barker College\Desktop\Console.bat"
goto :%curCon%

:hide
:echo0
@echo OFF
goto :%curCon%

:cls
cls
goto :%curCon%

:adHelp
echo "This is the admin help screen and command list"
echo "---------------------------------------------------------------------"
echo "help                 |   Help and command list                       "
echo "show                 |   Enables echo - essentially debug mode       "
echo "hide                 |   Disables echo - essentially debug mode      "
echo "cls                  |   Clears the console                          "
echo "ver                  |   Version information                         "
echo "extra                |   Set any variable                            "
echo "goto                 |   Point to headers in the code                "
echo "swap                 |   Allows you to run normal cmd prompt commands"
echo "edit                 |   This will open up a new window with the code"
echo "matrix               |   Will you take the blue pill or the red pill?"
echo "ran                  |   A very basic number generator               "
goto :%curCon%

:adCon
set curCon=adCon
set /p adCon=%username%@AdminConsole $
if /I "%adCon%" EQU "help" goto :adHelp
if /I "%adCon%" EQU "show" goto :show
if /I "%adCon%" EQU "hide" goto :hide
if /I "%adCon%" EQU "cls" goto :cls
if /I "%adCon%" EQU "ver" goto :ver
if /I "%adCon%" EQU "nice" goto :nice
if /I "%adCon%" EQU "launch" goto :main
if /I "%adCon%" EQU "extra" goto :extra
if /I "%adCon%" EQU "goto" goto :pointer
if /I "%adCon%" EQU "swap" goto :run
if /I "%adCon%" EQU "edit" goto :edit
if /I "%adCon%" EQU "matrix" goto :matrixyn
if /I "%adCon%" EQU "ran" goto :rnnum
goto :Error


:run
set curCon=run
set /p command=%username%@CommandPrompt $
if /I "%command%" EQU "swap" goto :adCon
if /I "%command%" EQU "nice" goto :nice1
if /I "%command%" EQU "start" goto :newWindow
if /I "%command%" EQU "sudo" goto :notUnix
if /I "%command%" EQU "help" goto :comhelp
if /I "%command%" EQU "help start" goto :helpnewWindow
if /I "%command%" EQU "edit" goto :edit
if /I "%command%" EQU "matrix" goto :matrixyn
if /I "%command%" EQU "ran" goto :rnnum
%command%
goto :%curCon%

:comhelp
echo 							DEV NOTES:
echo 			Some commands may not work as they require long outputs or the actual CMD
help
goto :%curCon%

:notUnix
echo It's not linux silly, you can't use sudo here!
goto :%curCon%

:newWindow
start Console.bat /c /k
goto :%curCon%

:helpnewWindow
echo 						this command doesn't really work, this is my "version" of it
echo							all the help menu stuff wont really do anything
help start
goto :%curCon%