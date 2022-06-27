@echo off
taskkill /f /im "Razer Synapse 3.exe"
taskkill /f /im "Razer Synapse Service.exe"
taskkill /f /im "Razer Synapse Service Process.exe"
taskkill /f /im "GameManagerService.exe"
taskkill /f /im "Razer Central.exe"
net stop RzActionSvc /y
sc config RzActionSvc start=demand
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Razer Synapse Service" /v "Start" /t REG_DWORD /d "3" /f > nul 2>&3
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Razer Update Service" /v "Start" /t REG_DWORD /d "3" /f > nul 2>&3
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Razer Game Manager Service" /v "Start" /t REG_DWORD /d "3" /f > nul 2>&3
echo.
echo Razer Synapses Debloated!
echo.
pause