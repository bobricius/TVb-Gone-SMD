rem avrdude -C ./avrdude.conf -v -p attiny85 -c usbasp -P usb -e
avrdude -C ./avrdude.conf -v -p attiny85 -c usbasp -P usb -U lfuse:w:0xfd:m -U hfuse:w:0xdf:m -U efuse:w:0xff:m
avrdude -C ./avrdude.conf -v -p attiny85 -c usbasp -P usb -U lfuse:r:-:h -U hfuse:r:-:h -U efuse:r:-:h -U lock:r:-:h

pause
avrdude -C ./avrdude.conf -v -p attiny85 -c usbasp -P usb  -i 100  -Uflash:w:tvbgone.hex:i



