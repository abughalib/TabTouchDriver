#!/bin/bash
echo "Make Sure to run it as root and silead.fw to /lib/firmware"
sh install_requirement.sh
make
mv touch.service /etc/systemd/system/touch.service
chmod u+x /etc/systemd/system/touch.service
mv touch.sh /etc/init.d/
chmod +x /etc/init.d/touch.sh
cd ..
mv TabTouchDriver /etc/init.d/
chmod u+x /etc/init.d/touch.sh
sudo systemctl start touch
sudo systemctl enable touch
echo "Run 'dmesg' to check if driver is working"