#!/bin/bash
set -e

echo "This script will ask your login name "
echo "It will be used to add you to the group autologin "
#echo "https://wiki.archlinux.org/index.php/LightDM#Enabling_autologin"

#checking if group autologin exists for Arch Linux
function grpexists {
if [ $(getent group $1) ]; then
  echo "Check : Group $1 exists"
else
  echo "Group $1 does not exist. Go to ArchWay folder"
  echo "Run the script to create the group autologin and"
  echo "rerun this script afterwards."
  exit 1
fi
}
grpexists autologin

##Change your username here
read -p "What is your login?
It will be used to add this user to the group autologin : " choice
sudo gpasswd -a $choice autologin

sudo sed -i 's/'#autologin-user='/'autologin-user=$choice'/g' /etc/lightdm/lightdm.conf
sudo sed -i 's/'#autologin-session='/'autologin-session=xfce'/g' /etc/lightdm/lightdm.conf

echo "################################################################"
echo "####        You can now autologin - reboot to check       ######"
echo "################################################################"