# !/bin/bash

sudo pacman -S python3 neovim kitty firefox lsd bat base-devel vlc ttf-jetbrains-mono-nerd neofetch htop hyprland waybar wofi swappy grim slurp nemo nemo-fileroller polkit-gnome pamixer pavucontrol network-manager-applet gvfs lxappearance startship --noconfirm

git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si --noconfirm

sleep 3

cd ..
rm -rf yay-bin

yay -S xdg-desktop-portal-hyprland-git brave-bin --noconfirm

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

sleep 2

source $HOME/.nvm/nvm.sh

nvm install v16.20.1
nvm install v18.16.1

nvm use v18.16.1 


echo "Linking dotfiles..."

rm -rf ~/.config/kitty
ln -s $HOME/dotfiles/.config/kitty ~/.config/kitty

rm -rf ~/.config/nvim
ln -s $HOME/dotfiles/.config/nvim ~/.config/nvim


echo '# === My Alias ===' >> ~/.bashrc
echo 'alias ls="lsd"' >> ~/.bashrc
echo 'alias cat="bat"' >> ~/.bashrc
echo 'alias v="nvim"' >> ~/.bashrc
echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.bashrc
echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm' >> ~/.bashrc
echo '[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion' >> ~/.bashrc
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc

echo 'eval "$(starship init bash)"' >> ~/.bashrc

sleep 2

echo "Done!"

