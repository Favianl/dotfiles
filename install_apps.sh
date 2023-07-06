# !/bin/bash

# sudo pacman -S alacritty
sudo pacman -S python3 neovim kitty firefox lsd bat base-devel vlc ttf-jetbrains-mono-nerd --noconfirm

git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si --noconfirm

sleep 3

cd ..
rm -rf yay-bin

# yay -S ttf-mononoki-nerd
yay -S brave-bin --noconfirm

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

sleep 2

source $HOME/.nvm/nvm.sh

nvm install v16.19.1
nvm install v18.15.0

nvm use v16.19.1

bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

echo "copying bashrc..."

rm ~/.bashrc
ln -s $HOME/dotfiles/.bashrc ~/.bashrc

exit
