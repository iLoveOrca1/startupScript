#!/bin/bash

cat ./dots/banner.txt
read -p "Hey! Please input  your username: " username

# updating  and upgrading
lsb_release -a
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg > /dev/null
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update -y && sudo apt-get upgrade -y

# packages to install
packages=(
    ufw
    network-manager
    rxvt-unicode
    vim
    emacs
    alsa
    pulseaudio
    brightnessctl
    dunst
    acpi
    i3
    lxrandr
    suckless-tools
    pcmanfm
    firefox
    geany
    sublime-text
    python3
    python3-pip
)

# installing the packages
for package in ${packages[@]};do
    sudo apt-get install ${package} -y
done

# configuring i3wm dots
mkdir -p /home/$username/.config/i3 
cp ./dots/i3/config /home/$username/.config/i3/config
chmod /home/$username/.config/i3/config

sudo ufw enable 
sudo ufw status
sudo systemctl status ufw

cp /etc/X11/xinit/xinitrc /home/$username/.xinitrc
chmod +x /home/$username/.xinitrc

# setting up backgrounds
cp -r ./wallpapers /home/$username/.config/

# setting up urxvt
cp ./dots/xorg/Xresources /home/$username/.Xresources
xrdb -load /home/$username/.Xresources
