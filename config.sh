#!/bin/bash

read -p "Hey! Please input  your username: " username

mkdir -p /home/$username/.config/i3 
cp ./dots/i3/config /home/$username/.config/i3/config
chmod +x /home/$username/.config/i3/config

cat /etc/X11/xinit/xinitrc > /home/$username/.xinitrc
chmod +x /home/$username/.xinitrc
echo "i3" >> /home/$username/.xinitrc

cp ./dots/xorg/Xresources /home/$username/.Xresources
xrdb -load /home/$username/.Xresources

cat ./dots/bashrc/bashrc >> /home/$username/.bashrc

mkdir -p /home/$username/.local/share/rofi/themes
cp ./dots/rofi/* /home/$username/.local/share/rofi/themes/.
echo ""

echo "Hey! Please run rofi-theme-selector on the terminal to change the rofi theme"
sleep 3

