# Linux on touch tablets.
Easy Touch Installation process for touch tablets like Chuwi, Jumper, Onda, Teclast etc...
# Firmware
### You can Find the firmware for the supported tablets
https://github.com/onitake/gsl-firmware
or if you tablet is not listed search for Extracting firmware in that page. <br />
[Firmware Extractor](https://github.com/jabjoe/sunxi-gslx680/)

# Process
### Installation process very easy.
clone this repository <br />
```
$ git clone https://github.com/abughalib/TabTouchDriver.git <br />
$ cd TabTouchDriver <br />
```
#### If you are on debian derivatives then you don't need to do anything unless you get an error.
#### If you are on Arch, Fedora or Anything like that you need to install the following.
```
make gcc g++ linux-headers-$(uname -r)
```
_I am using Chuwi hi10 Plus for the process you replace it with your_ <br />
<br />
Download the firmware from **gsl-firmware** linked above <br />
_For chuwi hi10 Plus I download [Chuwi Hi10 Plus] (https://github.com/onitake/gsl-firmware/blob/master/firmware/chuwi/hi10_plus/silead_ts.fw "this")_ <br />
<br />
**Move it to firmware** <br />
```
mv /path/to/slead.fw /lib/firmware
sh install.sh
```
### This should do everything and autostart is already in the script fell free to modify it.
<br />
## For cross-platform compiling [Go Here](https://github.com/onitake/gslx680-acpi/)
