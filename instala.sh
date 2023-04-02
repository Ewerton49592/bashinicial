#!/bin/bash

# Faz o download da chave pública do Google e a adiciona ao sistema
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

# Adiciona o repositório do Google Chrome ao sistema
echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list

# Atualiza a lista de pacotes do sistema
sudo apt-get update

# Instala o Google Chrome
sudo apt-get install -y google-chrome-stable
