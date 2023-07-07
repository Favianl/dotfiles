# !/bin/bash

# sudo pacman -S alacritty
sudo pacman -S python3 neovim kitty firefox lsd bat base-devel vlc ttf-jetbrains-mono-nerd neofetch --noconfirm

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

nvm install v16.20.1
nvm install v18.16.1

nvm use v18.16.1 

echo "Installing Oh My Bash..."

bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)" &
wait

echo "Linking dotfiles..."

# rm -rf ~/.config/alacritty
# ln -s $HOME/dotfiles/.config/alacritty ~/.config/alacritty

rm -rf ~/.config/kitty
ln -s $HOME/dotfiles/.config/kitty ~/.config/kitty

rm -rf ~/.config/nvim
ln -s $HOME/dotfiles/.config/nvim ~/.config/nvim

rm ~/.bashrc
ln -s $HOME/dotfiles/.bashrc ~/.bashrc

sleep 2

echo "Done!"
exit
