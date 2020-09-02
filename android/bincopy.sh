#!/bin/sh
mount -o remount,rw /
/sbin/.magisk/busybox/busybox cp -a /data/local/bin/* /bin/ 
chmod +x /bin/suse*
chmod +x /bin/suterm
chmod +x /bin/suvnc
chmod +x /bin/sukill
chmod +x /bin/kali*
chmod +x /bin/katerm
chmod +x /bin/kavnc
chmod +x /bin/kakill
mount -o remount,ro /
