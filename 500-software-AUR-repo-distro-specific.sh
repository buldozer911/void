#!/bin/bash
set -e

echo "AUR - DESKTOP SPECIFIC APPLICATIONS "

sh AUR-DS/install-mugshot-v*.sh

sh AUR-DS/install-menulibre-v*.sh

sh AUR/install-yad-v*.sh

sh AUR-DS/install-xfce4-panel-profiles-v*.sh

echo "################################################################"
echo "####       Software from AUR-DS folder installed          ######"
echo "################################################################"
