#
# ~/.bashrc
#
# gspt-git
export SPOTIFY_ID=862bdfc14de2413581a070cb8184885a
export SPOTIFY_SECRET=cb4c8c60ef76437c9848916db3293d07

export PATH="/home/xavi/Apps/docker/:$PATH"
export PATH="/home/xavi/Apps/node-v20.12.1-linux-x64/bin/:$PATH"
export PATH="/home/xavi/Apps/flutter/bin/:$PATH"
export STARSHIP_CONFIG=~/.config/starship/starship.toml
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias sudovim='sudo -E nvim'
alias luania='sudovim /etc/xdg/awesome/rc.lua'
alias iuabtw='neofetch'
alias wifi='/home/xavi/Scripts/./wifi.sh'
alias ls-wifi='nmcli dev wifi'
# alias vmware='sudo nohup vmware &'
alias rsddm='sudo systemctl restart sddm'
alias idea=' nohup /home/xavi/Apps/idea-IU-233.14808.21/bin/./idea.sh &'
alias ptnu='nohup packettracer &'
alias set-wall='$HOME/Scripts/./wall-script.sh'
alias rice='$HOME/Scripts/./dotfiles.sh'
alias mdbc='nohup mongodb-compass &'
# App aliases

# Git aliases
alias add='git add .'
alias cum='git commit -m '
alias ror='git remote add origin'
alias br='git branch -M main'
alias volveloco='git checkout HEAD^'
alias niktofile='sudo /home/xavi/Documents/SEG/./nktfl.sh'

# Some Tools
alias rip='/home/xavi/Repos/Blackarch/RegRipper3.0/./rip'

PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"

iuabtw
# cowsay -f kiss.cow "putas todas putas"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
. "$HOME/.cargo/env"
export PATH="/home/xavi/.config/herd-lite/bin:$PATH"
export PHP_INI_SCAN_DIR="/home/xavi/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"
