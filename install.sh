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
    suckless-tools
    rofi
    pcmanfm
    vlc
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

sudo ufw status
sudo ufw enable
sudo ufw start
