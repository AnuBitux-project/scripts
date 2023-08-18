#!/bin/bash

sudo nmcli radio wifi on
sudo nmcli networking on
sudo systemctl start bluetooth.service
gsettings set org.cinnamon.desktop.background picture-uri  "file:/home/anubitux/Pictures/AnubituxWallpaperBlue.png"

