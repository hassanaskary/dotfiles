#!/usr/bin/bash

echo "========================================================="
echo "updating"
echo "========================================================="
sudo apt update
sudo apt upgrade

echo "========================================================="
echo "installing build-essential etc..."
echo "========================================================="
sudo apt install build-essential apt-transport-https curl

echo "========================================================="
echo "installing alacritty"
echo "========================================================="
sudo add-apt-repository ppa:mmstick76/alacritty
sudo apt install alacritty 

echo "========================================================="
echo "installing tmux"
echo "========================================================="
sudo apt install tmux

echo "========================================================="
echo "installing vim"
echo "========================================================="

sudo apt install vim
echo "========================================================="
echo "installing keepassxc"
echo "========================================================="
sudo apt install keepassxc

echo "========================================================="
echo "installing mpv"
echo "========================================================="
sudo apt install mpv

echo "========================================================="
echo "installing transmission"
echo "========================================================="
sudo apt install transmission

echo "========================================================="
echo "installing libreoffice"
echo "========================================================="
sudo apt install libreoffice

echo "========================================================="
echo "installing virtualbox"
echo "========================================================="
sudo apt install virtualbox

echo "========================================================="
echo "installing miniconda3"
echo "========================================================="
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
chmod +x Miniconda3-latest-Linux-x86_64.sh
./Miniconda3-latest-Linux-x86_64.sh

echo "========================================================="
echo "installing copying dotfiles"
echo "========================================================="
cp -r .fonts/ ~/
cp .alacritty.yml ~/
cp .tmux.conf ~/
cp .vimrc ~/

echo "========================================================="
echo "done"
echo "========================================================="
