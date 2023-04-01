#!/bin/bash

# Adiciona a chave de assinatura do Brave ao sistema
curl https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -

# Adiciona o repositório do Brave ao sources.list
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list

# Atualiza a lista de pacotes disponíveis
sudo apt update

# Instala o Brave
sudo apt install brave-browser

# Define o Brave como o navegador padrão
sudo update-alternatives --set x-www-browser /usr/bin/brave-browser
sudo update-alternatives --set gnome-www-browser /usr/bin/brave-browser

