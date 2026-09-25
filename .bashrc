# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR='nvim'
export VISUAL='nvim'

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# Connect and disconnect Ferris Sweep
alias sweep-on='bluetoothctl connect FD:DA:4D:1D:0E:D2'
alias sweep-off='bluetoothctl disconnect FD:DA:4D:1D:0E:D2'
# Connect and disconnect Redmi Buds 6 Pro
alias redmi-on='bluetoothctl connect 00:BB:43:7A:E5:DE'
alias redmi-off='bluetoothctl disconnect 00:BB:43:7A:E5:DE'

eval "$(starship init bash)"

[[ -r /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion
