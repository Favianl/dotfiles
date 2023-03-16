# !/bin/bash

sudo pacman -S python3 neovim alacritty firefox lsd bat base-devel audacity inkscape vl --noconfirm

git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si

sleep 3

cd ..
rm -rf yay-bin

yay -S ttf-mononoki-nerd brave-bin --noconfirm

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

sleep 3

bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

exit
