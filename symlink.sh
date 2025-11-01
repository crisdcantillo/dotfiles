USER=crisdcantillo

sudo apt update
sudo apt upgrade

# keyd
sudo apt install keyd
mkdir -p /etc/keyd
ln -sf /home/$USER/dotfiles/default.conf /etc/keyd/default.conf
sudo systemctl enable keyd
sudo systemctl start keyd
