#!/bin/bash
set -e

echo "Creating common folders in correct language"
xdg-user-dirs-update
xdg-user-dirs-update --force

echo "Creating private folders we use later"

[ -d $HOME"/.icons" ] || mkdir -p $HOME"/.icons"
[ -d $HOME"/.themes" ] || mkdir -p $HOME"/.themes"
[ -d $HOME"/.fonts" ] || mkdir -p $HOME"/.fonts"

echo "################################################################"
echo "###       personal folders created or existed already       ####"
echo "################################################################"
