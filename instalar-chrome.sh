
#!/bin/bash

# Atualiza a lista de pacotes e instala o xfce4-goodies
sudo apt update
sudo apt install xfce4-goodies -y

# Cria um arquivo de inicialização do Xfce4
echo "xfce4-session" > ~/.xsession

# Configura o gerenciador de exibição LightDM para usar o Xfce4
sudo sed -i 's/^user-session=.*/user-session=xfce4/' /etc/lightdm/lightdm.conf

# Reinicia o sistema para que as mudanças entrem em vigor
sudo reboot
