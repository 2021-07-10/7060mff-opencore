## Docs


### Tools

|名称|用途|
|---|---|
|`ControlMsrE2.efi`| 检查是否锁定|
|[`modGRUBShell.efi`](https://github.com/datasone/grub-mod-setup_var/releases)| 用于解锁|

### SSDTs

* SSDT-PLUG
* SSDT-PMC
* SSDT-EC
* SSDT-HPET

### Kexts 

* `OpenCorePkg`: `0.6.8`
* `VirtualSMC`: `1.2.2`
* `Lilu`: `1.5.2`
* `WhateverGreen`: `1.4.9`
* `AppleALC`: `1.5.9`
* `IntelMausi`: `1.0.5`
* `itlwm`: `v1.3.0 stable` / `HeliPort`: `v1.4.0`
* `IntelBluetoothFirmware`: `1.1.2`
* `NVMeFix`: `1.0.6`

### EFI - Drives

|名字|描述|
|---|---|
|`AudioDxe.efi `|开机UEFI界面若需要声音效果需要加载|
|`CrScreenshotDxe.efi`|开机UEFI的截图工具|
|`HiiDatabase.efi`|用于给 Ivy Bridge (3 代酷睿) 或更老代主板上支持 UEFI 字体渲染, UEFI Shell 中文字渲染异常时使用, 新主板不需要。|
|`NvmExpressDxe.efi`|用于在 Haswell (4 代酷睿) 或更老的主板上支持 NVMe 硬盘, 新主板不需要
|`OpenCanopy.efi`| 加载第三方开机主题|
|`OpenUsbKbDxe.efi`| 给使用模拟 UEFI 的老主板在 OpenCore 界面正常输入用的, 请勿在 Ivy Bridge (3 代酷睿)及以上的主板上使用。|
|`Ps2KeyboardDxe.efi`|PS2键盘所需插件|
|`Ps2MouseDxe.efi`|PS2鼠标所需插件|
|`XhciDxe.efi`|用于在 Sandy Bridge（2代）及之前或更老的主板上加载XHCI控制器|
|`OpenPartitionDxe.efi`|Required to boot recovery on OS X 10.7 through 10.9|
|`UsbMouseDxe.efi`|当MacOS被安装在虚拟机上所需要的鼠标插件|

### config

**Booter - Quirks**

* `DevirtualiseMmio`: `True`
* `EnableWriteUnprotector`: `Fasle`
* `RebuildAppleMemoryMap`: `True`
* `SyncRuntimePermissions`: `True`

**DeviceProperties**

`PciRoot(0x0)/Pci(0x1F,0x3)`

|Key|Type|Value|
|---|---|---|
|`layout-id`|`Data`|`0B000000`

**Kernel - Quirks**

* `DisableIOMapper`: `True`
* `PanicNoKextDump`: `True`
* `PowerTimeoutKernelPanic`: `True`
* `XhciPortLimit`: `True`

**Misc - Debug**

* `AppleDebug`: `True`
* `ApplePan`: `True`
* `Target`: `67`

**Misc - Security**

* `AllowNvramReset`: `True`
* `AllowSetDefault`: `True`
* `ScanPolicy`: `0`
* `SecureBootModel`: `Default`
* `Vault`: `Optional`


### 参考资料

* [Dortania's OpenCore Install Guide](https://dortania.github.io/OpenCore-Install-Guide/)
* [OptiPlex 7060 微型机 设置和规格指南](https://dl.dell.com/topicspdf/optiplex-7060-desktop_specifications3_zh-cn.pdf)
* [戴尔 Dell OptiPlex 7060 微型机展示](https://www.hacktiny.com/posts/2597.html)
* [Intel Coffee Lake平台完美黑苹果系统安装教程（Opencore+Catalina15.4）- 司波图](https://www.youtube.com/watch?v=Lu6Kmz5aDhY)
* [OpenIntelWireless](https://openintelwireless.github.io/)
* [使用 OpenCore 引导黑苹果](https://blog.xjn819.com/post/opencore-guide.html)
* [Building a Bootable USB drive with UEFI Shell (x64)](https://chipsec.github.io/USB%20with%20UEFI%20Shell.html)

