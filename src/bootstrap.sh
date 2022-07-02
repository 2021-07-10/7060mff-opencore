mkdir -p ../EFI/BOOT
mkdir -p ../EFI/OC/{Drivers,Kexts,ACPI,Tools}

# @Drivers:
# ----------
wget https://github.com/acidanthera/OpenCorePkg/releases/download/0.7.7/OpenCore-0.7.7-RELEASE.zip
unzip OpenCore-0.7.7-RELEASE.zip
cp ./X64/EFI/BOOT/BOOTx64.efi ../EFI/BOOT/
cp ./X64/EFI/OC/Drivers/OpenRuntime.efi ../EFI/OC/Drivers/
cp ./X64/EFI/OC/Drivers/OpenHfsPlus.efi ../EFI/OC/Drivers/
cp ./X64/EFI/OC/OpenCore.efi ../EFI/OC/
# cp ./Docs/Sample.plist ../EFI/OC/config.plist

# ----------
wget https://raw.githubusercontent.com/acidanthera/OcBinaryData/master/Drivers/HfsPlus.efi
cp HfsPlus.efi ../EFI/OC/Drivers/

# @Kexts:
# ----------
wget https://github.com/acidanthera/VirtualSMC/releases/download/1.2.8/VirtualSMC-1.2.8-RELEASE.zip
unzip VirtualSMC-1.2.8-RELEASE.zip
cp -r ./Kexts/VirtualSMC.kext ../EFI/OC/Kexts/
cp -r ./Kexts/SMCProcessor.kext ../EFI/OC/Kexts/
cp -r ./Kexts/SMCSuperIO.kext ../EFI/OC/Kexts/

# ----------
wget https://github.com/acidanthera/Lilu/releases/download/1.5.9/Lilu-1.5.9-RELEASE.zip
unzip Lilu-1.5.9-RELEASE.zip
cp -r Lilu.kext ../EFI/OC/Kexts/

# ----------
wget https://github.com/acidanthera/WhateverGreen/releases/download/1.5.6/WhateverGreen-1.5.6-RELEASE.zip
unzip WhateverGreen-1.5.6-RELEASE.zip
cp -r WhateverGreen.kext  ../EFI/OC/Kexts/

# ----------
wget https://github.com/acidanthera/AppleALC/releases/download/1.6.8/AppleALC-1.6.8-RELEASE.zip
unzip AppleALC-1.6.8-RELEASE.zip
cp -r AppleALC.kext ../EFI/OC/Kexts/

# ----------
wget https://github.com/acidanthera/IntelMausi/releases/download/1.0.7/IntelMausi-1.0.7-RELEASE.zip
unzip IntelMausi-1.0.7-RELEASE.zip
cp -r IntelMausi.kext ../EFI/OC/Kexts/

# ----------
wget https://github.com/OpenIntelWireless/itlwm/releases/download/v2.1.0/itlwm_v2.1.0_stable.kext.zip
unzip itlwm_v2.1.0_stable.kext.zip
cp -r itlwm.kext ../EFI/OC/Kexts/

# ----------
wget https://github.com/OpenIntelWireless/IntelBluetoothFirmware/releases/download/v2.1.0/IntelBluetoothFirmware-v2.1.0.zip
unzip IntelBluetoothFirmware-v2.1.0.zip
cp -r IntelBluetoothFirmware.kext ../EFI/OC/Kexts/
cp -r IntelBluetoothInjector.kext ../EFI/OC/Kexts/

# ----------
wget https://github.com/acidanthera/NVMeFix/releases/download/1.0.9/NVMeFix-1.0.9-RELEASE.zip
unzip NVMeFix-1.0.9-RELEASE.zip 
cp -r NVMeFix.kext ../EFI/OC/Kexts/

# @ACPI:
# ----------
cp ./ssdt-plug/SSDT-PLUG.aml ../EFI/OC/ACPI/
cp ./ssdt-ec/SSDT-EC.aml ../EFI/OC/ACPI/
cp ./ssdt-pmc/SSDT-PMC.aml ../EFI/OC/ACPI/
cp ./ssdt-hpet/SSDT-HPET.aml ../EFI/OC/ACPI/

# @Tools:
# ----------
wget https://github.com/datasone/grub-mod-setup_var/releases/download/1.3/modGRUBShell.efi
cp modGRUBShell.efi ../EFI/OC/Tools/