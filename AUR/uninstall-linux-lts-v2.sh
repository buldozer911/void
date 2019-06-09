#!/bin/bash
set -e

sudo pacman -R linux-lts linux-lts-headers
sudo grub-mkconfig -o /boot/grub/grub.cfg

echo "################################################################"
echo "#########           You got to reboot.                 #########"
echo "################################################################"
