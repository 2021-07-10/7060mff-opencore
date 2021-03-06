## Setup

> [ProperTree](https://github.com/corpnewt/ProperTree) / [OpenCore Configurator](https://mackie100projects.altervista.org/download-opencore-configurator/)

**Init**

* [`Clean Snapshot`](https://dortania.github.io/OpenCore-Install-Guide/config.plist/)
* [`FixHPET`](https://dortania.github.io/Getting-Started-With-ACPI/cleanup.html)

**Booter - Quirks**

* `DevirtualiseMmio`: `True`
* `EnableWriteUnprotector`: `Fasle`
* `RebuildAppleMemoryMap`: `True`
* `SyncRuntimePermissions`: `True`

**DeviceProperties**

`PciRoot(0x0)/Pci(0x1F,0x3)` / 声卡

|Key|Type|Value|
|---|---|---|
|`layout-id`|`Data`|`0B000000`

`PciRoot(0x0)/Pci(0x2,0x0)` / 显卡

> 不设置 Sound / Output 只有一个DP

|Key|Type|Value|
|---|---|---|
|`AAPL,ig-platform-id`|`Data`|`07009B3E`|
|`framebuffer-patch-enable`|`Data`|`01000000`|
|`framebuffer-stolenmem`|`Data`|`00003001`|

**Kernel - Quirks**

* `DisableIoMapper`: `True` / Not needed if `VT-D` is disabled in the BIOS
* `PanicNoKextDump`: `True`
* `PowerTimeoutKernelPanic`: `True`
* `XhciPortLimit`: `False` / Disable if running macOS 11.3+

**Misc - Debug**

> [Disabling all logging](https://dortania.github.io/OpenCore-Install-Guide/troubleshooting/debug.html#disabling-all-logging)

* `AppleDebug`: `False`
* `ApplePanic`: `False`
* `Target`: `0`

**Misc - Security**

* `AllowNvramReset`: `True`
* `AllowSetDefault`: `True`
* `BlacklistAppleUpdate`: `True`
* `ScanPolicy`: `0`
* `SecureBootModel`: `Default`
* `Vault`: `Optional`

**NVRAM**

`7C436110-AB2A-4BBB-A880-FE41995C9F82`

* `boot-args`: ` `
* `prev-lang:kbd`: `String`: `en-US:0` `en:252`

**PlatformInfo - Generic**

> [GenSMBIOS](https://github.com/corpnewt/GenSMBIOS)

* `SystemProductName`: `Macmini8,1`
* `Serial`: `C07W1059JYVX`
* `Board Serial`: `C077533064NKXPG8C`
* `SmUUID`: `F13C0A66-645B-4174-8AC8-6D81B972F340`



## Software

**Core**

组件|本期|上期|备注
---|---|---|---
`OpenCorePkg`| `0.7.7` | `0.6.8`

**Drives**

组件|本期|上期|备注
---|---|---|---
[`HfsPlus.efi`](https://github.com/acidanthera/OcBinaryData/blob/master/Drivers/HfsPlus.efi) | `29b2391` | `192ed42`

**Kexts**

组件|本期|上期|备注
---|---|---|---
`VirtualSMC` | `1.2.8` | `1.2.2`
`Lilu` | `1.5.9` | `1.5.2`
`WhateverGreen` | `1.5.6` | `1.4.9`
`AppleALC` | `1.6.8` | `1.5.9`
`IntelMausi` | `1.0.7` | `1.0.5`
`itlwm` | `v2.1.0 stable` | `v1.3.0 stable`
`IntelBluetoothFirmware` | `v2.1.0` | `v1.1.2`
`NVMeFix` | `1.0.9` | `1.0.6`

**Tools**

名称|本期|上期|备注
---|---|---|---
[`modGRUBShell.efi`](https://github.com/datasone/grub-mod-setup_var/releases)| `1.3` | `1.3`

**SSDTs**

> [`SSDTTime`](https://github.com/corpnewt/SSDTTime)

组件|本期|上期|备注
---|---|:---:|---
`SSDT-PLUG`| `1.16.0`
`SSDT-EC`| `1.16.0`
`SSDT-PMC`| `1.16.0`
`SSDT-HPET`| `1.16.0`

## Fixing CFG Lock

> [https://dortania.github.io/OpenCore-Post-Install/misc/msr-lock.html](https://dortania.github.io/OpenCore-Post-Install/misc/msr-lock.html)


**DVMT Pre-Allocated**

```
grep -A 9 -i "DVMT Pre-Allocated" Section_PE32_image_Setup.txt
```

**CFG Lock**

```
grep -A 2 -i "CFG Lock" Section_PE32_image_Setup.txt
```

## Ref

* Universal Bios Backup Tool(备份)
* [Building a Bootable USB drive with UEFI Shell (x64)](https://chipsec.github.io/)g