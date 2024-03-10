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
alias iuabtw='neofetch --ascii_distro arch_small'
alias wifi='/home/xavi/Scripts/./wifi.sh'
alias ls-wifi='nmcli dev wifi'
alias rldm='systemctl restart lightdm'
# App aliases

# Git aliases
alias add='git add .'
alias cum='git commit -m '
alias or='git remote add origin'
alias br='git brach -M main'
alias volveloco='git checkout HEAD^'

PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"

iuabtw
cowsay "putas todas putas"
