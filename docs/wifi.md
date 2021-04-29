
```
/usr/libexec/PlistBuddy -c 'Delete :menuExtras:1' ~/Library/Preferences/com.apple.systemuiserver.plist
killall SystemUIServer
```

```
/usr/libexec/PlistBuddy -c 'Add :menuExtras:1 string "/System/Library/CoreServices/Menu Extras/AirPort.menu"' ~/Library/Preferences/com.apple.systemuiserver.plist
killall SystemUIServer
```

### 参考资料

* [How can I hide/show the Wi-Fi menu item from the Terminal in OS X?](https://superuser.com/questions/398071/how-can-i-hide-show-the-wi-fi-menu-item-from-the-terminal-in-os-x)
