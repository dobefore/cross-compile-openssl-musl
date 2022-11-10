# cross-compile-openssl-musl
cross compile openssl and upload to artifacts release

After downloading to a folder in a file system,you may want to uncompress it using command as follows:
```
tar -zxvf openssl1.1.1f_1.1.1_linux_arm64.tar.gz
```
And the folder trees (`tree openssl1.1.1f_1.1.1_linux_arm64 -L 2`) are as follows:
```
openssl1.1.1f_1.1.1_linux_arm64
└── openssl
    ├── bin
    ├── include
    ├── lib
    ├── share
    └── ssl
```

Note: target arm uses `arm-rpi-4.9.3-linux-gnueabihf` (https://github.com/raspberrypi/tools.git $HOME/rpitools) instead of musl tool,yet this may have no effect on further rust build.