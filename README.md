# Linux on touch tablets.
Easy Touch Installation process for touch tablets like Chuwi, Jumper, Onda, Teclast etc...
# Firmware
### You can Find the firmware for the supported tablets
https://github.com/onitake/gsl-firmware
or if you tablet is not listed search for Extracting firmware in that page. <br />
[Firmware Extractor](https://github.com/jabjoe/sunxi-gslx680/)

# Process
### Installation process very easy.
clone this repository <br/>
```
$ git clone https://github.com/abughalib/TabTouchDriver.git
$ cd TabTouchDriver
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

## Common Errors
### insmod: command not found.
**Replace insmod to /sbin/insmod in touch.sh**<br/>
### Command Not found in general Try step by step:
For Debian or debian derivatives <br/>
```
sudo apt-get update
sudo apt-get install make
sudo apt-get install gcc
sudo apt-get install g++
sudo apt install linux-headers-$(uname -r)
```
For All Destro <br/>
***Now Download the touch firmware silead_ts.fw move it to firmware**<br/>
```
make
mv touch.service /etc/systemd/system/touch.service
chmod u+x /etc/systemd/system/touch.service
mv touch.sh /etc/init.d/
cd ..
mv TabTouchDriver /etc/init.d/
chmod u+x /etc/init.d/touch.sh
sudo systemctl start touch
sudo systemctl enable touch
```
**To check if it is running dmesg**
