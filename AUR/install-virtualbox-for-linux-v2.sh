#!/bin/bash
set -e

echo "################################################################"
echo "##  This script assumes you have the linux kernel running     ##"
echo "################################################################"

sudo pacman -S --needed --noconfirm virtualbox-host-modules-arch
sudo pacman -S --noconfirm --needed virtualbox
sudo grub-mkconfig -o /boot/grub/grub.cfg

echo "################################################################"
echo "#########           You got to reboot.                 #########"
echo "################################################################"
