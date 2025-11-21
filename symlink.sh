USER=crisdcantillo
DOTSFOLDER=/home/$USER/dotfiles

# essential installs
sudo apt install build-essential git tig curl wget unzip zip tar htop vim ripgrep fzf bat xclip ripgrep

# keyd
sudo rm /etc/keyd/default.conf
git clone https://github.com/rvaiya/keyd.git
cd keyd
make && make install
ln -sf $DOTSFOLDER/default.conf /etc/keyd/default.conf
sudo systemctl enable keyd
sudo systemctl start keyd
sudo rm -rf $DOTSFOLDER/keyd

# nvim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /home/$USER/.config/nvim
sudo rm -rf /opt/nvim-linux-x86_64
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
rm nvim-linux-x86_64.tar.gz
ln -sf $DOTSFOLDER/nvim /home/$USER/.config/nvim

# nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
\. "$HOME/.nvm/nvm.sh"
nvm install --lts

# fonts
mkdir -p /home/$USER/.local/share/fonts
ln -sf $DOTSFOLDER/fonts /home/$USER/.local/share/fonts
fc-cache -fv

# gitconfig
sudo rm /home/$USER/.gitconfig
ln -sf $DOTSFOLDER/.gitconfig /home/$USER/.gitconfig

sudo echo 'export PATH=$PATH:/opt/nvim-linux-x86_64/bin' >> /home/$USER/.bashrc
sudo echo 'export EDITOR=nvim' >> /home/$USER/.bashrc
sudo echo 'export VISUAL=nvim' >> /home/$USER/.bashrc

sudo apt update && sudo apt upgrade
sudo apt autoremove
