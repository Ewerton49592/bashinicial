#!/bin/bash

# Copia os arquivos de configuração do painel do XFCE
cp -r /etc/skel/.config/xfce4/panel $HOME/.config/xfce4/panel
cp /etc/skel/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml
