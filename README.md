# TabTouchDriver
Touch Driver for tablets

# Firmware
### You can Find the firmware for the supported tablets
https://github.com/onitake/gsl-firmware
or if you tablet is not listed search for Extracting firmware in that page.

# Process
### Installation process very easy.
clone this repository <br />
$ git clone https://github.com/abughalib/TabTouchDriver.git <br />
$ cd TabTouchDriver <br />
#### If you are on debian derivatives then you don't need to do anything unless you get an error.
#### If you are on Arch, Fedora or Anything like that you need to install the following.
make gcc g++ linux-headers-$(uname -r) <br />
_I am using Chuwi hi10 Plus for the process you replace it with your_ <br />
Download the firmware from **gsl-firmware** linked above <br />
_For chuwi hi10 Plus I download [Chuwi Hi10 Plus] (https://github.com/onitake/gsl-firmware/blob/master/firmware/chuwi/hi10_plus/silead_ts.fw "this")_ <br />
**Move it to firmware** <br />
mv /path/to/slead.fw /lib/firmware <br />
sh install.sh <br />
