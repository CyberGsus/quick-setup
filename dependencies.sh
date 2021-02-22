#!/bin/sh
set -e
declare -a deps=(
neovim # text editor
alacritty-ligatures-git # terminal
fish # shell
starship # prompt
xmonad
xmobar
# xmonad scripts deps
brightnessctl
pamixer
snapd # for vscode
discord # of course.
betterdiscordctl # yes.
aur/gruvbox-dark-gtk
aur/gruvbox-dark-icons-gtk 
)

declare -a fonts=(
aur/nerd-fonts-cascadia-code
aur/nerd-fonts-ubuntu-mono
aur/nerd-fonts-mononoki
extra/noto-fonts-cjk
extra/noto-fonts-emoji
extra/noto-fonts
)

# paru
echo "Installing paru..."
sudo pacman -Sy git rustup --noconfirm --needed
rustup update
rustup toolchain install stable
git clone https://aur.archlinux.org/paru.git
pushd paru
makepkg -si
popd

echo "Installing rest of dependencies with paru"
paru -Sy $deps $fonts --noconfirm --needed

# Install BD
betterdiscordctl && betterdiscordctl install
