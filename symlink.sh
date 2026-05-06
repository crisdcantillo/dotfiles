USER=crisdcantillo
DOTSFOLDER=/home/$USER/dotfiles

# essential installs
sudo apt install build-essential git curl wget unzip zip tar htop vim ripgrep fzf bat xclip

# keyd
sudo rm /etc/keyd/default.conf
git clone https://github.com/rvaiya/keyd.git
cd keyd
make && make install
ln -sf $DOTSFOLDER/default.conf /etc/keyd/default.conf
sudo systemctl enable keyd
sudo systemctl start keyd
sudo rm -rf $DOTSFOLDER/keyd

# fonts
mkdir -p /home/$USER/.local/share/fonts
ln -sf $DOTSFOLDER/fonts /home/$USER/.local/share/fonts
fc-cache -fv

# gitconfig
sudo rm /home/$USER/.gitconfig
ln -sf $DOTSFOLDER/.gitconfig /home/$USER/.gitconfig

# tmux
sudo rm /home/$USER/.tmux.conf
ln -sf $DOTSFOLDER/.tmux.conf /home/$USER/.tmux.conf

sudo apt update && sudo apt upgrade
sudo apt autoremove
