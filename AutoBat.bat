:: App Name: AutoBat
:: Author: Ajay Singh
:: Date: 09-01-2025
:: Version: 0.1
:: Description: This is the AutoBat Link Launcher batch script that allows users to open predefined links quickly.
:: The user can open all links, or individual links based on their selection.

@echo off
title AutoBat Link Launcher

:: Define URLs
set link1=https://www.link1.com
set link2=https://www.link2.com
set link3=https://www.link3.com

:: Main Menu
:main
cls
echo ---------------------------------------
echo      Welcome to the Link Launcher!
echo ---------------------------------------
echo [1] Open Link 1
echo [2] Open Link 2
echo [3] Open Link 3
echo [A] Open All Links
echo [E] Exit
echo ---------------------------------------
echo.

:: Prompt user with a 10-second timeout
choice /c 123AE /n /t 10 /d A /m "Enter your choice (1/2/3/A/E): "

:: Handle user input based on errorlevel
if errorlevel 5 (
    echo Exiting...
    goto end
) else if errorlevel 4 (
    echo Opening All Links...
    start %link1%
    start %link2%
    start %link3%
) else if errorlevel 3 (
    echo Opening Link 3...
    start %link3%
) else if errorlevel 2 (
    echo Opening Link 2...
    start %link2%
) else if errorlevel 1 (
    echo Opening Link 1...
    start %link1%
) else (
    echo Invalid choice! Please try again...
    timeout /t 2 >nul
    goto main
)

:end
echo.
echo Thank you for using the Link Launcher!
