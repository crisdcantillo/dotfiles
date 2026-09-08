# README

just run `sudo ./symlink.sh` to put everything in its place, it'll create a lot of symlinks to setup the system as intended. Make sure to run `chmod +x ./symlink.sh` to allow the file to run

--

to update TTY font-family, font-size and keyboard layout, add these lines to `/etc/vconsole.conf`:

FONT=ter-c24b
KEYMAP=/usr/share/kbd/keymaps/i386/colemak/mod-dh-iso-uk.map.gz
