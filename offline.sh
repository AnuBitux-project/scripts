#!/bin/bash

sudo nmcli radio wifi off
sudo nmcli networking off
sudo systemctl disable bluetooth.service
sudo systemctl stop bluetooth.service
gsettings set org.cinnamon.desktop.background picture-uri  "file:/home/anubitux/Pictures/AnubituxWallpaperBlueOffline.png"


