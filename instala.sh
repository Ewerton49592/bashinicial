#!/bin/bash

# Atualiza a lista de pacotes do sistema
sudo apt-get update

# Executa a atualização do sistema
sudo apt-get upgrade --assume-yes

# Instala o pacote xfce4-goodies
sudo apt-get install --assume-yes xfce4-goodies

# Baixa o pacote .deb do Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P /tmp

# Instala o Google Chrome a partir do pacote .deb baixado
sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb

# Instala as dependências que podem ter ficado faltando
sudo apt-get -f install --assume-yes

# Remove o pacote .deb baixado
rm /tmp/google-chrome-stable_current_amd64.deb
