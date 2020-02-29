# TabTouchDriver
Touch Driver for tablets

# Firmware
### You can Find the firmware for the supported tablets
https://github.com/onitake/gsl-firmware
or if you tablet is not listed search for Extracting firmware in that page.

# Process
### Installation process very easy.
clone this repository\n
$ git clone https://github.com/abughalib/TabTouchDriver.git\n
$ cd TabTouchDriver\n
#### If you are on debian derivatives then you don't need to do anything unless you get an error.
#### If you are on Arch, Fedora or Anything like that you need to install the following.
make gcc g++ linux-headers-$(uname -r)\n
_I am using Chuwi hi10 Plus for the process you replace it with your_\n
Download the firmware from **gsl-firmware** linked above\n
_For chuwi hi10 Plus I download [Chuwi Hi10 Plus] (https://github.com/onitake/gsl-firmware/blob/master/firmware/chuwi/hi10_plus/silead_ts.fw "this")_\n
**Move it to firmware**\n
mv /path/to/slead.fw /lib/firmware\n
sh install.sh\n
