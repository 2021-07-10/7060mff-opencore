# 7060mff-opencore


## BIOS

> [`OptiPlex_7060_1.20.0`](https://dl.dell.com/FOLDER08572247M/1/OptiPlex_7060_1.20.0.exe)

**1 - modGRUBShell.efi**

* 修改 `DVMT Pre-Allocated` 为 `64M`: `setup_var 0x8DC 0x2`
* 禁用 `CFG lock`: `setup_var 0x5BE 0x0`

## 应用软件

> 在操作系统内安装

组件|本期|上期|备注
---|---|:---:|---
[`HeliPort.dmg`](https://github.com/OpenIntelWireless/HeliPort/releases/download/v1.4.1/HeliPort.dmg)| `1.4.1` | `1.4.0`| Intel Wifi 联网
[`Hackintool`](https://github.com/headkaze/Hackintool) | `3.8.3` | -  | 调试工具 |

## 硬件

> [OptiPlex 7060](https://www.dell.com/support/home/zh-cn/product-support/product/optiplex-7060-desktop/overview) / [OptiPlex 7060 微型机设置和规格指南](https://dl.dell.com/topicspdf/optiplex-7060-desktop_specifications3_zh-cn.pdf) ([本地版本](./src/optiplex-7060-desktop_specifications3_zh-cn.pdf))

* 芯片组: [Intel® Q370 Chipset](https://ark.intel.com/content/www/cn/zh/ark/products/133282/intel-q370-chipset.html)
* 处理器: [英特尔® 酷睿™ i5-8600T 处理器](https://ark.intel.com/content/www/cn/zh/ark/products/129938/intel-core-i5-8600t-processor-9m-cache-up-to-3-70-ghz.html)
* 网络适配器: [英特尔® 以太网连接 I219-LM](https://ark.intel.com/content/www/cn/zh/ark/products/82185/intel-ethernet-connection-i219-lm.html)
* 无线: [英特尔® Wireless-AC 9560](https://ark.intel.com/content/www/cn/zh/ark/products/99446/intel-wireless-ac-9560.html)
* 音频: `Realtek ALC3234`
* 视频: `英特尔 UHD 显卡 630`
* 硬盘: [`WD BLUE SN550 NVME SSD`](https://support-cn.wd.com/app/products/product-detail/p/1555) ([本地版本](./src/02-01-WW-04-00050.pdf))
* 内存: `三星 DDR4 2666MHz 8GB` x 2 / [`M471A1K43DB1-CTD`](https://www.samsung.com/semiconductor/cn/dram/module/M471A1K43DB1-CTD/)
* 显示器: [Dell U2419HS](https://www.dell.com/support/home/zh-cn/product-support/product/dell-u2419hs-monitor/overview) x 2
* 键盘:  [FILCO Majestouch Minila Air](https://www.diatec.co.jp/en/det.php?prod_c=1470) / [小米无线键鼠套装](https://www.mi.com/buy/detail?product_id=11418)


## Ref

* [https://dortania.github.io/OpenCore-Install-Guide/](https://dortania.github.io/OpenCore-Install-Guide/) - `0.7.8`
