:: App Name: AutoBat
:: Author: Ajay Singh
:: Date: 09-01-2025
:: Version: 0.2
:: Description: This is the AutoBat Link Launcher batch script that allows users to open predefined links quickly.
:: The user can open all links, or individual links based on their selection.

@echo off
title AutoBat - Session Name

:: Initialize the link counter
set "LINK_COUNT=0"

:: Define links and their names (you can add more links here)
set "LINK1=https://www.link1.com"
set "LINK2=https://www.link2.com"
set "LINK3=https://www.link3.com"
:: Add additional links by following this pattern
set "LINK4=https://www.link4.com"
set "LINK5=https://www.link5.com"

:: Define link names (for menu display)
set "LINK_NAME1=Link 1"
set "LINK_NAME2=Link 2"
set "LINK_NAME3=Link 3"
set "LINK_NAME4=Link 4"
set "LINK_NAME5=Link 5"
:: Add more link names as you add more links

:: Count how many links we have
for %%i in (LINK1 LINK2 LINK3 LINK4 LINK5) do (
    set /a LINK_COUNT+=1
)

:: Main Menu
:main
cls
echo ---------------------------------------
echo      Welcome to AutoBat - Session Name!
echo ---------------------------------------
echo [A] Open All Links
:: Display individual link options dynamically
for /L %%i in (1,1,%LINK_COUNT%) do (
    set "LINK_VAR=LINK%%i"
    set "LINK_NAME_VAR=LINK_NAME%%i"
    call echo [%%i] Open !%LINK_NAME_VAR%!
)
echo [E] Exit
echo ---------------------------------------
echo.

:: Prompt user with a 10-second timeout
choice /c A12345E /n /t 10 /d A /m "Enter your choice (A/1-5/E): "

:: Handle user input based on errorlevel
if errorlevel 7 (
    echo Exiting...
    goto end
) else if errorlevel 6 (
    echo Opening Link 5...
    start %LINK5%
) else if errorlevel 5 (
    echo Opening Link 4...
    start %LINK4%
) else if errorlevel 4 (
    echo Opening Link 3...
    start %LINK3%
) else if errorlevel 3 (
    echo Opening Link 2...
    start %LINK2%
) else if errorlevel 2 (
    echo Opening Link 1...
    start %LINK1%
) else if errorlevel 1 (
    echo Opening All Links...
    call :openLinks
) else (
    echo Invalid choice! Please try again...
    timeout /t 2 >nul
    goto main
)

:: Function to open all links
:openLinks
for %%L in (%LINK1% %LINK2% %LINK3% %LINK4% %LINK5%) do (
    start %%L
)
goto :eof

:end
echo.
echo Thank you for using AutoBat!
