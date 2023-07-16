# !/bin/bash

git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si --noconfirm

sleep 3

cd ..
rm -rf yay-bin

sleep 2

yay -S qt5-wayland qt5ct qt6-wayland qt6ct qt5-svg qt5-quickcontrols2 qt5-graphicaleffects gtk3 polkit-gnome pipewire wireplumber jq wl-clipboard cliphist python-requests python3 neovim kitty firefox lsd bat base-devel vlc ttf-jetbrains-mono-nerd neofetch htop hyprland waybar wofi swappy grim slurp nemo nemo-fileroller brightnessctl pamixer pavucontrol network-manager-applet gvfs lxappearance xdg-desktop-portal-hyprland brave-bin papirus-icon-theme xfce4-settings nwg-look-bin --noconfirm


yay -R xdg-desktop-portal-gnome xdg-desktop-portal-gtk --noconfirm 


curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

sleep 2

source $HOME/.nvm/nvm.sh

sleep 2

nvm install v16.20.1
nvm install v18.16.1

nvm use v18.16.1 

echo "Linking dotfiles..."

rm -rf ~/.config/kitty
ln -s $HOME/dotfiles/.config/kitty ~/.config/kitty

rm -rf ~/.config/nvim
ln -s $HOME/dotfiles/.config/nvim ~/.config/nvim

rm -rf ~/.config/hypr
ln -s $HOME/dotfiles/hyprland-conf/hypr ~/.config/hypr

rm -rf ~/.config/waybar
ln -s $HOME/dotfiles/hyprland-conf/waybar ~/.config/waybar

rm ~/.bashrc
ln -s $HOME/dotfiles/.bashrc ~/.bashrc

# setup the first look and feel as dark
xfconf-query -c xsettings -p /Net/ThemeName -s "Adwaita-dark"
xfconf-query -c xsettings -p /Net/IconThemeName -s "Papirus-Dark"
gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"
gsettings set org.gnome.desktop.interface icon-theme "Papirus-Dark"

sleep 2


echo "Done!"

