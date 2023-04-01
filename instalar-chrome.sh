#!/bin/bash

# Adiciona a chave de assinatura do Google Chrome ao sistema
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

# Adiciona o repositório do Google Chrome ao sources.list
echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list

# Atualiza a lista de pacotes disponíveis
sudo apt update

# Instala o Google Chrome
sudo apt install google-chrome-stable
