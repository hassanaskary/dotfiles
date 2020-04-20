#!/usr/bin/bash

echo "========================================================="
echo "updating"
echo "========================================================="
sudo apt update
sudo apt -y upgrade

echo "========================================================="
echo "installing build-essential etc..."
echo "========================================================="
sudo apt -y install build-essential apt-transport-https curl

echo "========================================================="
echo "installing alacritty"
echo "========================================================="
sudo add-apt-repository -y ppa:mmstick76/alacritty
sudo apt -y install alacritty 

echo "========================================================="
echo "installing vim etc..."
echo "========================================================="
sudo apt -y install vim tmux silversearcher-ag sxiv mpv htop tlp tlp-rdw keepassxc transmission libreoffice virtualbox

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
cp .gitconfig ~/

echo "========================================================="
echo "done"
echo "========================================================="
