#!/usr/bin/bash

echo "========================================================="
echo "updating"
echo "========================================================="
sudo apt update
sudo apt -y upgrade

echo "========================================================="
echo "installing build-essential etc..."
echo "========================================================="
sudo apt -y install build-essential apt-transport-https curl cmake

echo "========================================================="
echo "installing alacritty"
echo "========================================================="
sudo add-apt-repository -y ppa:mmstick76/alacritty
sudo apt -y install alacritty 

echo "========================================================="
echo "installing vim etc..."
echo "========================================================="
sudo apt -y install neovim tmux silversearcher-ag sxiv mpv latexmk zathura zathura-pdf-poppler htop tlp tlp-rdw keepassxc transmission virtualbox virtualbox-ext-pack texlive-latex-extra texlive-fonts-extra

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
cp .gitconfig ~/
mkdir -p ~/.config/nvim/
cp init.vim ~/.config/nvim/

echo "========================================================="
echo "done"
echo "========================================================="
