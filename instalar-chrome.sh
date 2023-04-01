#!/bin/bash

# Faz o download do Firefox
wget -O firefox.tar.bz2 "https://download.mozilla.org/?product=firefox-latest&os=linux64&lang=en-US"

# Extrai o arquivo baixado
tar xjf firefox.tar.bz2 -C /opt/

# Cria um link simbólico para o Firefox
sudo ln -s /opt/firefox/firefox /usr/bin/firefox

# Define o Firefox como o navegador padrão
sudo update-alternatives --set x-www-browser /usr/bin/firefox
sudo update-alternatives --set gnome-www-browser /usr/bin/firefox
