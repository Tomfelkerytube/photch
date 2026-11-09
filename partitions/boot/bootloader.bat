:START
@echo off
cd /d "%~dp0"
if not exist "vbmetachng" (
    if not exist "unlock" (
        echo.
        echo.
        echo.
        echo.
        echo.
        echo                     Crosoft
        echo.
        echo.
        echo.
        echo.
        echo              Powered by PhoneOS.
        timeout /t 1 /nobreak > nul
        call boot.bat
        ..\system\init.bat
    )
    if exist "unlock" (
        echo Bootloader unlocked.
        echo Press enter to continue booting.
        pause >nul
        cls
        if exist "..\system\new" (
            color 17
            echo This phone has been flashed with unauthorized software.
            echo Please contact Crosoft for reflashing methods.
            echo ERROR : novbmeta(11^)
            echo (rebooting in 3 seconds.^)
            timeout /t 3 /nobreak >nul
            color 07
            goto START
        )
        if exist "..\product\new" (
            color 17
            echo This phone has been flashed with unauthorized software.
            echo Please contact Crosoft for reflashing methods.
            echo ERROR : novbmeta(11^)
            echo (rebooting in 3 seconds.^)
            timeout /t 3 /nobreak >nul
            color 07
            goto START
        )
        if exist "..\super\new" (
            echo This phone has been bricked!
            echo Please contact Crosoft incase of an active warrenty.
            
        )
        if exist "..\vendor\new" (
            color 17
            echo This phone has been flashed with unauthorized software.
            echo Please contact Crosoft for reflashing methods.
            echo ERROR : novbmeta(11^)
            echo (rebooting in 3 seconds.^)
            timeout /t 3 /nobreak >nul
            color 07
            goto START
        )
        if exist "..\storage\new" (
            color 17
            echo This phone has been flashed with an unknown storage image.
            echo Please contact Crosoft for reflashing methods.
            echo ERROR : novbmeta(11^)
            echo (rebooting in 3 seconds.^)
            timeout /t 3 /nobreak >nul
            color 07
            goto START
        )
    )
)