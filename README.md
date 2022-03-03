# Arduino Lab

## Windows Guide

Program files need to have the extension `.s`

### WinAVR download:
http://sourceforge.net/projects/winavr/

### To compile a program called `FILE_NAME.s`:
```
avr-as -g -mmcu=atmega328p -o FILE_NAME.o FILE_NAME.s
avr-ld -o FILE_NAME.elf FILE_NAME.o
avr-objcopy -O ihex -R .eeprom FILE_NAME.elf FILE_NAME.hex
```

### To transfer to Arduino, where WinAVR was installed to `C:\Program Files\WinAVR`:
```
avrdude -C "C:\Program Files\WinAVR\bin\avrdude.conf" -p atmega328p -c arduino -b 57600 -P COM3 -D -U flash:w:FILE_NAME.hex:i
```
