#!/bin/bash
sudo apt update
sudo apt upgrade -y
sudo apt install xfce4-goodies -y

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get install -f
