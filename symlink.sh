USER=crisdcantillo
DOTSFOLDER=/home/$USER/dotfiles

packages=$(grep -v '^[[:space:]]*$' packages.txt)
sudo xbps-install -y $packages

# fonts
rm -rf /usr/share/fonts/nerd-fonts
ln -sf $DOTSFOLDER/nerd-fonts /usr/share/fonts/nerd-fonts
fc-cache -fv

# sway
rm -rf /home/$USER/.config/sway
ln -sf $DOTSFOLDER/sway /home/$USER/.config/sway

# gitconfig
ln -sf $DOTSFOLDER/.gitconfig /home/$USER/.gitconfig

# bash
rm -rf /home/$USER/.bashrc
ln -sf $DOTSFOLDER/.bashrc /home/$USER/.bashrc

# starship
rm -rf /home/$USER/starship.toml
ln -sf $DOTSFOLDER/starship.toml /home/$USER/starship.toml

# foot
rm -rf /home/$USER/.config/foot
ln -sf $DOTSFOLDER/foot /home/$USER/.config/foot

# nvim
rm -rf /home/$USER/.config/nvim
ln -sf $DOTSFOLDER/nvim /home/$USER/.config/nvim
