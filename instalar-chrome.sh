#!/bin/bash

# Atualiza e faz o upgrade do sistema
sudo apt update && sudo apt upgrade -y

# Instala o ambiente gráfico xfce4
sudo apt install xfce4 -y

# Instala o Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get install -f -y
rm google-chrome-stable_current_amd64.deb

# Instala o zip e o unzip
sudo apt install zip unzip -y

# Instala o rclone
curl https://rclone.org/install.sh | sudo bash

# Instala o pip
sudo apt install python3-pip -y

# Seta permissão 777 para a pasta /mnt
sudo chmod 777 /mnt

# Instala dependências para compilar o chia-plotter
sudo apt install -y libsodium-dev cmake g++ git build-essential

# Baixa o chia-plotter e compila
git clone https://github.com/madMAx43v3r/chia-plotter.git
cd chia-plotter
git submodule update --init
./make_devel.sh

# Adiciona o chia-plotter como global
sudo ln -s /path/to/chia-plotter/build/chia_plot /usr/local/bin/chia_plot
