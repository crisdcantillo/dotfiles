USER=crisdcantillo

sudo apt update
sudo apt upgrade

# keyd
sudo apt install keyd
mkdir -p /etc/keyd
ln -sf /home/$USER/dotfiles/default.conf /etc/keyd/default.conf
sudo systemctl enable keyd
sudo systemctl start keyd

# nvim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo rm -rf /opt/nvim-linux-x86_64
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
rm nvim-linux-x86_64.tar.gz

ln -sf /home/$USER/dotfiles/nvim /home/$USER/.config/nvim

sudo apt install xclip		# clipboard provider
sudo apt install ripgrep	# for text search, needed for telescope

# bashrc
ln -sf /home/$USER/dotfiles/.bash_profile /home/$USER/.bash_profile
