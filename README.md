# README

### symlinks
in theory, just run `sudo ./symlink.sh` to put everything in its place, but I'll add more details for each dotfile down below just in case

<hr>

### keyd
- install keyd first: `sudo apt install keyd`
- put `default.config` into `/etc/keyd/`
- enable it with `sudo systemctl enable keyd`
- make it run with `sudo systemctl start keyd`

**useful commands**
- `xev`: to know which key you are pressing
- `sudo systemctl restart keyd`: restart the service after you make changes to `default.conf`
- `!w sudo tee % > /dev/null`: to save a file with sudo (inside of nvim)
