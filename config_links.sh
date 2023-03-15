# !/bin/bash

rm -rf ~/.config/alacritty
ln -s $HOME/dotfiles/.config/alacritty ~/.config/alacritty

rm -rf ~/.config/nvim
ln -s $HOME/dotfiles/.config/nvim ~/.config/nvim


rm ~/.bashrc
ln -s $HOME/dotfiles/.bashrc ~/.bashrc
