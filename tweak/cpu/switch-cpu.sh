#!/sbin/sh
cp /system/etc/cpu2.sh /tmp/cpu3.sh
cp /system/etc/cpu3.sh /tmp/cpu2.sh
rm /system/etc/cpu2.sh
rm /system/etc/cpu3.sh
cp /tmp/cpu2.sh /system/etc/cpu2.sh
cp /tmp/cpu3.sh /system/etc/cpu3.sh

