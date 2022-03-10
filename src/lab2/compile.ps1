$filename = "led-on.s"
avr-as -g -mmcu=atmega328p -o built.o $filename
avr-ld -o built.elf built.o
avr-objcopy -O ihex -R .eeprom built.elf built.hex
