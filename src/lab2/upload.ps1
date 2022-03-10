$avr = "C:\Program Files\WinAVR"
$baudrate = 57600 # for Arduino Nano
#$baudrate = 115200 # for Arduino Uno
$port = "COM3"
$target = "flash:w:built.hex:i"

avrdude -C "$avr\bin\avrdude.conf" -v -p atmega328p -c arduino -P $port -b $baudrate -D -U $target
