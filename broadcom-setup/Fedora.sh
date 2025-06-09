#!/bin/bash

lspci -nn | grep Network

sudo dnf update

sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo install broancom-wl wpa_supplicant 

modules=(
    b44
    b43
    ssb
    brcmsmac
    bcma
)
for module in ${modules[@]};do
    sudo modprobe -r $module
done

sudo modprobe wl
sudo modprobe broadcom-wl


