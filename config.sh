#!/bin/bash

read -p "Hey! Please input  your username: " username

mkdir -p /home/$username/.config/i3 
cp ./dots/i3/config /home/$username/.config/i3/config
chmod +x /home/$username/.config/i3/config

cat /etc/X11/xinit/xinitrc > /home/$username/.xinitrc
chmod +x /home/$username/.xinitrc
echo "i3" >> /home/$username/.xinitrc

cp -r ./wallpapers /home/$username/.config/

cp ./dots/xorg/Xresources /home/$username/.Xresources
xrdb -load /home/$username/.Xresources

mkdir -p /home/$username/.local/share/rofi/themes
cp ./dots/rofi/squared-nord.rasi /home/$username/.local/share/rofi/themes/.
echo ""
echo "Hey! Please run rofi-theme-selector on the terminal to change the rofi theme"
sleep 3
