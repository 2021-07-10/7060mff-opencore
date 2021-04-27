### CFG Lock & DVMT Pre-Allocated

```
# grep -A 9 -i "DVMT"  src/bios.txt
setup_var 0x8DC 0x2  （修改 DVMT Pre-Allocated 为64MB）

# grep -A 2 -i "CFG Lock"  src/bios.txt
setup_var 0x5BE 0x0   （禁用CFG lock）
```


|名称｜用途|
|---|---|
|`ControlMsrE2.efi`| 检查是否锁定|
|[`modGRUBShell.efi`](https://github.com/datasone/grub-mod-setup_var/releases)| 用于解锁|

### 参考资料

* Universal Bios Backup Tool(备份)
* VerifyMsrE2(检查是否锁定)
* ifrextract(https://github.com/LongSoft/Universal-IFR-Extractor/releases)
* UEFITool(https://github.com/LongSoft/UEFITool)
