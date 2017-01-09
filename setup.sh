#!/bin/bash


# system update
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install git stow screen

# install settings
stow vim	-t ~
stow X		-t ~
stow email	-t ~
stow zsh 	-t ~
stow urxvt 	-t ~

# linux kernnel dev setup
sudo update-alternatives --config editor

