#!/bin/bash

read -p "Hey! Please input  your username: " username

mkdir -p /home/$username/.config/i3 
mkdir -p /home/$username/.config/i3status
mkdir -p /home/$username/.local/share/rofi/themes

cp ./dots/i3/config /home/$username/.config/i3/config
cp ./dots/i3status/config /home/$username/.config/i3status/config
cp ./dots/xorg/Xresources /home/$username/.Xresources
cp ./dots/rofi/* /home/$username/.local/share/rofi/themes/.

cat ./dots/bashrc/bashrc >> /home/$username/.bashrc
cat /etc/X11/xinit/xinitrc > /home/$username/.xinitrc

chmod +x /home/$username/.xinitrc
chmod +x /home/$username/.config/i3/config
echo "i3" >> /home/$username/.xinitrc

xrdb -load /home/$username/.Xresources
echo ""

echo "Hey! Please run rofi-theme-selector on the terminal to change the rofi theme"
sleep 3

