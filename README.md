# match

```
$ stm32-toolchain st-info --probe
Found 1 stlink programmers
 serial: 303637364646353335313535383738
openocd: "\x30\x36\x37\x36\x46\x46\x35\x33\x35\x31\x35\x35\x38\x37\x38"
  flash: 1.048.576 (pagesize: 16.384)
   sram: 262144
 chipid: 0x0419
  descr: F42x and F43x device
```
------    nucleo bord  --------------
```
$ stm32-toolchain st-info --probe
Found 1 stlink programmers
 serial: 303637364646353335313535383738
openocd: "\x30\x36\x37\x36\x46\x46\x35\x33\x35\x31\x35\x35\x38\x37\x38"
  flash: 2.097.152 (pagesize: 16.384)
   sram: 262144
 chipid: 0x0419
  descr: F42x and F43x device
```


```bash
$ openocd -f /usr/share/openocd/scripts/board/st_nucleo_f4.cfg
Open On-Chip Debugger 0.9.0 (2018-01-21-13:43)
Licensed under GNU GPL v2
For bug reports, read
        http://openocd.org/doc/doxygen/bugs.html
Info : The selected transport took over low-level target control. The results might differ compared to plain JTAG/SWD
adapter speed: 2000 kHz
adapter_nsrst_delay: 100
none separate
srst_only separate srst_nogate srst_open_drain connect_deassert_srst
Info : Unable to match requested speed 2000 kHz, using 1800 kHz
Info : Unable to match requested speed 2000 kHz, using 1800 kHz
Info : clock speed 1800 kHz
Info : STLINK v2 JTAG v29 API v2 SWIM v18 VID 0x0483 PID 0x374B
Info : using stlink api v2
Info : Target voltage: 3.248819
Info : stm32f4x.cpu: hardware has 6 breakpoints, 4 watchpoints
```

I tried an example that worked on the nucleo, but it didn't gave me network connection
```
$ st-flash write mbed-os-tcp-server-example.NUCLEO_F439ZI.bin 0x8000000
st-flash 1.5.0
2020-02-22T22:57:44 INFO common.c: Loading device parameters....
2020-02-22T22:57:44 INFO common.c: Device connected is: F42x and F43x device, id 0x20036419
2020-02-22T22:57:44 INFO common.c: SRAM size: 0x40000 bytes (256 KiB), Flash: 0x200000 bytes (2048 KiB) in pages of 16384 bytes
2020-02-22T22:57:44 INFO common.c: Attempting to write 92860 (0x16abc) bytes to stm32 address: 134217728 (0x8000000)
Flash page at addr: 0x08010000 erasedEraseFlash - Sector:0x4 Size:0x10000 
2020-02-22T22:57:47 INFO common.c: Finished erasing 5 pages of 65536 (0x10000) bytes
2020-02-22T22:57:47 INFO common.c: Starting Flash write for F2/F4/L4
2020-02-22T22:57:47 INFO flash_loader.c: Successfully loaded flash loader in sram
enabling 32-bit flash writes
size: 32768
size: 32768
size: 27324
2020-02-22T22:57:48 INFO common.c: Starting verification of write complete
2020-02-22T22:57:49 INFO common.c: Flash written and verified! jolly good!
```


