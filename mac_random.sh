#!/bin/sh
for interface in $(ls /sys/class/net/ | grep -v lo); do
    macchanger -r "$interface"
done
exit 0
