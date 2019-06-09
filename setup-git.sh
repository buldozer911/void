#!/bin/bash
# Author: Sushil Singh

set -e

git init
git config --global user.name "Sushil Singh"
git config --global user.email "sushilsingh2005@gmail.com"
sudo git config --system core.editor vim
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=25000'
git config --global push.default simple

