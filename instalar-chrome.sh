#!/bin/bash

# Verifica se o sistema é Ubuntu
if [ $(lsb_release -is) != "Ubuntu" ]; then
    echo "Este script é compatível apenas com sistemas Ubuntu."
    exit 1
fi

# Baixa o pacote de instalação do Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

# Instala o pacote de instalação do Google Chrome
sudo dpkg -i google-chrome-stable_current_amd64.deb

# Instala as dependências do Google Chrome
sudo apt-get -f install -y

# Remove o pacote de instalação do Google Chrome
rm google-chrome-stable_current_amd64.deb

# Exibe uma mensagem indicando que a instalação foi concluída
echo "A instalação do Google Chrome foi concluída com sucesso."
