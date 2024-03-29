#
# ~/.bashrc
#
export PATH="/home/xavi/Apps/node-v21.6.2-linux-x64/bin/:$PATH"
export STARSHIP_CONFIG=~/.config/starship/starship.toml
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias sudovim='sudo -E nvim'
alias luania='sudovim /etc/xdg/awesome/rc.lua'
alias iuabtw='neofetch'
alias wifi='nohup /home/xavi/Scripts/./wifi.sh &'
alias ls-wifi='nmcli dev wifi'
alias woped='nohup java -jar $HOME/WoPeD/WoPeD-Starter.jar &'
alias vmware='nohup vmware &'
alias rsddm='sudo systemctl restart sddm'
alias idea=' nohup /home/xavi/Apps/idea-IU-233.14808.21/bin/./idea.sh &'
alias ptnu='nohup packettracer &'
alias set-wall='$HOME/Scripts/./wall-script.sh'
alias rice='$HOME/Scripts/./dotfiles.sh'
# App aliases

# Git aliases
alias add='git add .'
alias cum='git commit -m '
alias ror='git remote add origin'
alias br='git branch -M main'
alias volveloco='git checkout HEAD^'

PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"

iuabtw
# cowsay -f kiss.cow "putas todas putas"
