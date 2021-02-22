cp -rf .config ~
cp -rf .icons ~
cp -rf .tmux ~
cp -rf .xmonad ~
cp .xinitrc ~
cp .tmux.conf ~  
sed "s/cyber/$USER" .fehbg > ~/.fehbg

# Install cursors
git clone https://github.com/yeyushengfan258/Future-cursors
cd Future-cursors
./install.sh
cd ..
rm -rf Future-cursors

xmonad --recompile
nvim -c 'PlugInstall --sync' -c 'qa!'

# Image from wall.alphacoders.com
mkdir -p ~/.local/share/wallpapers && \
wget https://initiate.alphacoders.com/download/wallpaper/476288/images6/jpg/593057514261760 -o ~/.local/share/wallpapers/wall1.jpg

# Mark scripts as executable
chmod u+x ~/.config/xmobar/scripts/* ~/.xmonad/scripts/*


