#!/bin/bash

sudo nmcli radio wifi on
sudo nmcli networking on
sudo systemctl start bluetooth.service
gsettings set org.cinnamon.desktop.background picture-uri  "file:/usr/share/backgrounds/AnuBitux_WP/AnubituxWallpaperBlue.png"
