#!/bin/bash

# Executa o comando "apt-get update" para atualizar as informações dos pacotes
sudo apt-get update

# Executa o comando "apt-get upgrade" para atualizar os pacotes instalados sem a necessidade de confirmar manualmente
sudo apt-get upgrade -y

# Instala o ambiente gráfico XFCE4
sudo apt-get install xfce4 -y

sudo apt-get install gedit -y

sudo apt-get install lightdm -y

sudo apt install vlc -y

sudo apt install qbittorrent -y

sudo -v ; curl https://rclone.org/install.sh | sudo bash

# Faz o download da chave pública do Google e a adiciona ao sistema
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

# Adiciona o repositório do Google Chrome ao sistema
echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list

# Atualiza a lista de pacotes do sistema
sudo apt-get update

# Instala o Google Chrome
sudo apt-get install -y google-chrome-stable

# Move o arquivo de configuração antigo do unity-greeter para um arquivo de backup
sudo mv /usr/share/lightdm/lightdm.conf.d/50-unity-greeter.conf /usr/share/lightdm/lightdm.conf.d/50-unity-greeter.conf.old

# Cria e edita o novo arquivo de configuração do xfce-greeter
sudo tee /usr/share/lightdm/lightdm.conf.d/50-xfce-greeter.conf > /dev/null <<EOF
[SeatDefaults]
greeter-session=unity-greeter
user-session=xfce
EOF

# Install dependencies
sudo apt install -y libsodium-dev cmake g++ git build-essential

# Checkout the source and install
git clone https://github.com/madMAx43v3r/chia-plotter.git 
cd chia-plotter
git submodule update --init
./make_devel.sh

# Add program to PATH
echo 'export PATH="$PATH:'$(pwd)'/build"' >> ~/.bashrc
source ~/.bashrc

# Reinicia o sistema
sudo shutdown -r now
