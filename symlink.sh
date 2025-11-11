USER=crisdcantillo
DOTSFOLDER=/home/$USER/dotfiles

sudo apt update && sudo apt upgrade

# essential installs
sudo apt install build-essential git tig curl wget unzip zip tar htop vim ripgrep fzf bat xclip ripgrep

# keyd
git clone https://github.com/rvaiya/keyd.git
cd keyd
make && make install
ln -sf $DOTSFOLDER/default.conf /etc/keyd/default.conf
sudo systemctl enable keyd
sudo systemctl start keyd

# ssh
ln -sf $DOTSFOLDER/config /home/$USER/.ssh/config

# nvim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim-linux-x86_64
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
rm nvim-linux-x86_64.tar.gz
ln -sf /home/$USER/dotfiles/nvim /home/$USER/.config/nvim

# bashrc
ln -sf /home/$USER/dotfiles/.bash_profile /home/$USER/.bash_profile
ln -sf $DOTSFOLDER/nvim /home/$USER/.config/nvim

# nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
\. "$HOME/.nvm/nvm.sh"
nvm install --lts

# fonts
mkdir -p /home/$USER/.local/share/fonts
ln -sf $DOTSFOLDER/fonts /home/$USER/.local/share/fonts
fc-cache -fv

# bashrc
ln -sf $DOTSFOLDER/.bash_profile /home/$USER/.bash_profile

# gitconfig
ln -sf $DOTSFOLDER/.gitconfig /home/$USER/.gitconfig
