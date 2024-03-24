#!/bin/sh
figlet RandomMacAddress
echo ' '
for interface in $(ls /sys/class/net/ | grep -v lo); do
    sudo macchanger -r "$interface"
done
$SHELL
