#!/bin/bash

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
# system update
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install git stow screen keychain network-manager-gnome google-chrome-stable -y

mkdir -p ~/git/ && cd ~/git && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git


# install settings
stow vim	-t ~
stow X		-t ~
stow email	-t ~
stow zsh 	-t ~
stow urxvt 	-t ~

# linux kernnel dev setup
sudo update-alternatives --config editor

# use zsh
chsh -s $(which zsh)

