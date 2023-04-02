#!/bin/bash

# Atualiza a lista de pacotes do sistema
sudo apt-get update

# Instala o ambiente gráfico XFCE4 e outras dependências necessárias
sudo apt-get install --assume-yes xfce4 desktop-base dbus-x11 xscreensaver

# Configura o gerenciador de exibição para iniciar o XFCE4 como ambiente gráfico padrão
sudo bash -c 'echo "/usr/bin/startxfce4" > /etc/X11/xinit/xserverrc'

# Reinicia o sistema para que as alterações tenham efeito
sudo reboot
