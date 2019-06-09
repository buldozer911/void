#!/bin/bash
set -e
[ -d $HOME"/.gnupg" ] || mkdir -p $HOME"/.gnupg"

echo '

keyserver hkp://pool.sks-keyservers.net:80
keyserver hkps://hkps.pool.sks-keyservers.net:443
keyserver hkp://ipv4.pool.sks-keyservers.net:11371' | sudo tee --append ~/.gnupg/gpg.conf

echo "################################################################"
echo "###                  keyservers added                       ####"
echo "################################################################"
