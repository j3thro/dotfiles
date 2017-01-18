#!/bin/bash


# system update
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install git stow screen keychain

mkdir -p ~/git/ && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git


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

