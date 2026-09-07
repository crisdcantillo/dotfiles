USER=crisdcantillo
DOTSFOLDER=/home/$USER/dotfiles

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

# nvim
sudo rm -rf /home/$USER/.config/nvim
ln -sf $DOTSFOLDER/nvim /home/$USER/.config/nvim
