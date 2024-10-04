.PHONY: Build Base Firmware Kexts SSDTs Sonoma SonomaClean

Build:
	mkdir -p ../EFI/BOOT
	mkdir -p ../EFI/OC/{Drivers,Kexts,ACPI,Tools}
	touch ../EFI/BOOT/.contentVisibility
	echo Disabled >> ../EFI/BOOT/.contentVisibility

Base: OpenCore-1.0.1-RELEASE.zip modGRUBShell.efi
	cp ./X64/EFI/BOOT/BOOTx64.efi ../EFI/BOOT/
	cp ./X64/EFI/OC/OpenCore.efi ../EFI/OC/
	cp ./X64/EFI/OC/Tools/CleanNvram.efi ../EFI/OC/Tools/
	cp ./Docs/Sample.plist ../EFI/OC/config.plist
	cp modGRUBShell.efi ../EFI/OC/Tools/

Firmware: OpenCore-1.0.1-RELEASE.zip HfsPlus.efi modGRUBShell.efi
# Universal
	cp HfsPlus.efi ../EFI/OC/Drivers/
	cp ./X64/EFI/OC/Drivers/OpenRuntime.efi ../EFI/OC/Drivers/

Kexts: Lilu-1.6.8-RELEASE.zip \
	VirtualSMC-1.3.3-RELEASE.zip \
	WhateverGreen-1.6.7-RELEASE.zip \
	AppleALC-1.9.1-RELEASE.zip \
	IntelMausi-1.0.7-RELEASE.zip \
	NVMeFix-1.1.1-RELEASE.zip
# Must haves
	cp -r Lilu.kext ../EFI/OC/Kexts/
	cp -r ./Kexts/VirtualSMC.kext ../EFI/OC/Kexts/
#VirtualSMC Plugins
	cp -r ./Kexts/SMCProcessor.kext ../EFI/OC/Kexts/
	cp -r ./Kexts/SMCSuperIO.kext ../EFI/OC/Kexts/
# Graphics
	cp -r WhateverGreen.kext  ../EFI/OC/Kexts/
# Audio
	cp -r AppleALC.kext ../EFI/OC/Kexts/
# Ethernet
	cp -r IntelMausi.kext ../EFI/OC/Kexts/
# USB
	cp -r ../USBPorts.kext ../EFI/OC/Kexts/
# Extras
	cp -r NVMeFix.kext ../EFI/OC/Kexts/

SSDTs:
	cp ../ssdts/ssdt-plug/SSDT-PLUG.aml ../EFI/OC/ACPI/
	cp ../ssdts/ssdt-ec/SSDT-EC.aml ../EFI/OC/ACPI/
	cp ../ssdts/ssdt-pmc/SSDT-PMC.aml ../EFI/OC/ACPI/
	cp ../ssdts/ssdt-hpet/SSDT-HPET.aml ../EFI/OC/ACPI/

Sonoma: AMFIPass-v1.4.1-RELEASE.zip \
	IOSkywalkFamily-v1.2.0.zip \
	IO80211FamilyLegacy-v1.0.0.zip \
	AutoPkgInstaller-v1.0.4-RELEASE.zip

	cp -r AMFIPass.kext ../EFI/OC/Kexts/
	cp -r IOSkywalkFamily.kext ../EFI/OC/Kexts/
	cp -r IO80211FamilyLegacy.kext ../EFI/OC/Kexts/
	cp -r AutoPkgInstaller.kext ../EFI/OC/Kexts/

SonomaClean:
	rm -rf ../EFI/OC/Kexts/AMFIPass.kext
	rm -rf ../EFI/OC/Kexts/IOSkywalkFamily.kext
	rm -rf ../EFI/OC/Kexts/IO80211FamilyLegacy.kext
	rm -rf ../EFI/OC/Kexts/AutoPkgInstaller.kext

OpenCore-1.0.1-RELEASE.zip:
	wget https://github.com/acidanthera/OpenCorePkg/releases/download/1.0.1/OpenCore-1.0.1-RELEASE.zip
	unzip OpenCore-1.0.1-RELEASE.zip
	
# c2a9898
HfsPlus.efi:
	wget https://raw.githubusercontent.com/acidanthera/OcBinaryData/master/Drivers/HfsPlus.efi

modGRUBShell.efi:
	wget https://github.com/datasone/grub-mod-setup_var/releases/download/1.4/modGRUBShell.efi

Lilu-1.6.8-RELEASE.zip:
	wget https://github.com/acidanthera/Lilu/releases/download/1.6.8/Lilu-1.6.8-RELEASE.zip
	unzip Lilu-1.6.8-RELEASE.zip

VirtualSMC-1.3.3-RELEASE.zip:
	wget https://github.com/acidanthera/VirtualSMC/releases/download/1.3.3/VirtualSMC-1.3.3-RELEASE.zip
	unzip VirtualSMC-1.3.3-RELEASE.zip

WhateverGreen-1.6.7-RELEASE.zip:
	wget https://github.com/acidanthera/WhateverGreen/releases/download/1.6.7/WhateverGreen-1.6.7-RELEASE.zip
	unzip WhateverGreen-1.6.7-RELEASE.zip

AppleALC-1.9.1-RELEASE.zip:
	wget https://github.com/acidanthera/AppleALC/releases/download/1.9.1/AppleALC-1.9.1-RELEASE.zip
	unzip AppleALC-1.9.1-RELEASE.zip

IntelMausi-1.0.7-RELEASE.zip:
	wget https://github.com/acidanthera/IntelMausi/releases/download/1.0.7/IntelMausi-1.0.7-RELEASE.zip
	unzip IntelMausi-1.0.7-RELEASE.zip

NVMeFix-1.1.1-RELEASE.zip:
	wget https://github.com/acidanthera/NVMeFix/releases/download/1.1.1/NVMeFix-1.1.1-RELEASE.zip
	unzip NVMeFix-1.1.1-RELEASE.zip

# https://community.macmeup.com/index.php?/files/file/23-amfipasskext/
AMFIPass-v1.4.1-RELEASE.zip:
	wget https://github.com/dortania/OpenCore-Legacy-Patcher/raw/refs/heads/main/payloads/Kexts/Acidanthera/AMFIPass-v1.4.1-RELEASE.zip
	unzip AMFIPass-v1.4.1-RELEASE.zip

IOSkywalkFamily-v1.2.0.zip:
	wget https://github.com/dortania/OpenCore-Legacy-Patcher/raw/refs/heads/main/payloads/Kexts/Wifi/IOSkywalkFamily-v1.2.0.zip
	unzip IOSkywalkFamily-v1.2.0.zip

IO80211FamilyLegacy-v1.0.0.zip:
	wget https://github.com/dortania/OpenCore-Legacy-Patcher/raw/refs/heads/main/payloads/Kexts/Wifi/IO80211FamilyLegacy-v1.0.0.zip
	unzip IO80211FamilyLegacy-v1.0.0.zip

AutoPkgInstaller-v1.0.4-RELEASE.zip:
	wget https://github.com/dortania/OpenCore-Legacy-Patcher/raw/refs/heads/main/payloads/Kexts/Acidanthera/AutoPkgInstaller-v1.0.4-RELEASE.zip
	unzip AutoPkgInstaller-v1.0.4-RELEASE.zip

AutoPkg-Assets.pkg:
	wget https://github.com/dortania/OpenCore-Legacy-Patcher/releases/download/2.0.1/AutoPkg-Assets.pkg