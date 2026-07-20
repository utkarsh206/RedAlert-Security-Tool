@echo off
title CRITICAL SECURITY ALERT
color 4f
mode con: cols=110 lines=35

:: Disable resizing (visual effect)
echo off

:boot
cls
echo Initializing security breach...
timeout /t 1 >nul
echo Connecting to remote server...
timeout /t 1 >nul
echo Injecting payload...
timeout /t 1 >nul
echo.
echo ACCESS GRANTED...
timeout /t 2 >nul

:: Fake warning screen
:warning
cls
echo ###########################################################################
echo #                                                                         #
echo #                    !!! CRITICAL SECURITY ALERT !!!                      #
echo #                                                                         #
echo ###########################################################################
echo.
echo Your system has been compromised!
echo All your files are being processed...
echo.
echo DO NOT CLOSE THIS WINDOW!
echo.

timeout /t 3 >nul

:: Fake encryption progress
setlocal enabledelayedexpansion
set progress=0

:encrypt
set /a progress+=3
cls
echo Encrypting Files... !progress!%%
echo.
echo [########################################################]
echo.
echo System Status: ACTIVE THREAT
echo.
timeout /t 1 >nul
if !progress! lss 100 goto encrypt

:: Fake file names
cls
echo Encrypting important files...
echo.
echo C:\Users\%username%\Documents\bank_details.txt
echo C:\Users\%username%\Desktop\photos.zip
echo C:\Windows\System32\config.sys
echo C:\Projects\secret_code.cpp
timeout /t 4 >nul

:: Fake ransom message
cls
echo ###########################################################################
echo #                                                                         #
echo #                    YOUR FILES HAVE BEEN ENCRYPTED                       #
echo #                                                                         #
echo ###########################################################################
echo.
echo To recover your files you must send:
echo.
echo        500 BITCOIN 
echo.
echo Wallet Address:
echo 1A2B3C4D5E6F7G8H9I0J
echo.
echo Time Remaining:
echo.

:: Countdown Timer
set timeleft=30

:timer
cls
echo ################## RANSOM TIMER ##################
echo.
echo Time left: !timeleft! seconds
echo.
echo If time reaches 0:
echo Your files will be deleted forever (just kidding)
echo.
echo Send payment NOW!!!
echo.
timeout /t 1 >nul
set /a timeleft-=1
if !timeleft! gtr 0 goto timer

:: Reveal prank
cls
echo ###############################################
echo #                                             #
echo #            GOTCHA! IT'S A PRANK          #
echo #                                             #
echo ###############################################
echo.
echo Your system is completely SAFE 
echo No files were harmed!
echo.
echo Press any key to exit...
pause >nul

exit
