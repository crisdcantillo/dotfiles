USER=crisdcantillo
DOTSFOLDER=/home/$USER/dotfiles

sudo pacman -S \
    # GENERAL
    tlp \               # Battery Manager
    grim \              # Screenshots
    slurp \             # Screenshot Section
    less \              # Navigate Long Terminal Texts
    # WAYLAND
    waybar \            # Status Bar
    hyprlauncher \      # App Launcher
    hyprpaper \         # Wallpapers
    wl-clipboard \      # Clipboard
    terminus-font \     # Terminal Font
    # DEVELOPMENT
    git \               # Version Control
    distrobox \         # Run Distros
    bash-completion \   # Autocomplete on Terminal
    starship \          # Customizable Terminal Prompt
    tmux \              # Terminal Multiplexer
    nodejs \            # Javascript Runtime
    npm \               # Package Manager for Javascript
    base-devel \        # Tools for C
    gdb \               # Debugger for C
    # CODE EDITOR
    neovim \            # Editor
    luarocks \          # Package manager for Lua
    tree-sitter-cli \   # CLI for Treesitter
    ripgrep             # Recursive Search

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
