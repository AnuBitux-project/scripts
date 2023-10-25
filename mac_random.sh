#!/bin/sh
for interface in $(ls /sys/class/net/ | grep -v lo); do
    sudo macchanger -r "$interface"
done
$SHELL
