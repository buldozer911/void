#!/bin/bash
set -e



echo "Making sure firefox looks great in dark themes like Arc-Dark"
echo "Firefox must have started once. The directory will not exist otherwise."

sh firefox &
sleep 1
killall firefox

cp -r settings/firefox/chrome/ ~/.mozilla/firefox/*.default

echo "Restart firefox to see the effect"


echo "################################################################"
echo "#########       firefox  settings installed     ################"
echo "################################################################"
