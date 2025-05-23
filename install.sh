#!/bin/bash

read -p "Hey! Please input  your username: " username

# updating  and upgrading
lsb_release -a
sudo apt-get update -y && sudo apt-get upgrade -y

# packages to install
packages=(
    ufw
    network-manager
    rxvt-unicode
    vim
    alsa
    pulseaudio
    brightnessctl
    dunst
    acpi
    i3
    lxrandr
    rofi
    pcmanfm
    vlc
    fish
    fzf
    flameshot
    redshift
    firefox
    geany
    python3
    python3-pip
)

# installing the packages
for package in ${packages[@]};do
    sudo apt-get install ${package} -y
done

sudo chsh -s /usr/bin/fish $username

sudo ufw status
sudo ufw enable
sudo ufw start
