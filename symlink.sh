USER=crisdcantillo
DOTSFOLDER=/home/$USER/dotfiles

sudo pacman -S tlp grim slurp wl-clipboard terminus-font git waybar hyprpaper distrobox bash-completion starship tmux neovim luarocks tree-sitter-cli less nodejs npm

sudo yay ddev-bin

# fonts
rm -rf /home/$USER/.local/share/fonts
ln -sf $DOTSFOLDER/fonts /home/$USER/.local/share/fonts
fc-cache -fv

# bash
rm -rf /home/$USER/.bashrc
ln -sf $DOTSFOLDER/.bashrc /home/$USER/.bashrc

# gitconfig
rm /home/$USER/.gitconfig
ln -sf $DOTSFOLDER/.gitconfig /home/$USER/.gitconfig

# hypr
rm -rf /home/$USER/.config/hypr
ln -sf $DOTSFOLDER/hypr /home/$USER/.config/hypr

# waybar
rm -rf /home/$USER/.config/waybar
ln -sf $DOTSFOLDER/waybar /home/$USER/.config/waybar

# kitty
rm -rf /home/$USER/.config/kitty
ln -sf $DOTSFOLDER/kitty /home/$USER/.config/kitty

# tmux
rm /home/$USER/.tmux.conf
ln -sf $DOTSFOLDER/.tmux.conf /home/$USER/.tmux.conf

# starship
rm -rf /home/$USER/.config/starship.toml
ln -sf $DOTSFOLDER/.starship.toml /home/$USER/.config/starship.toml

# nvim
rm -rf /home/$USER/.config/nvim
ln -sf $DOTSFOLDER/nvim /home/$USER/.config/nvim
