#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


PS1='\n\u \W $ '





#Aliases

alias ls='ls --color=auto'
alias pacman='pacman --color=auto'
alias yay='yay --color=auto'

#Pacman 

alias pacremd="sudo pacman -Rcns"
alias pacrem="sudo pacman -Rns"
alias search="pacman -Ss"
alias pacinstall="sudo pacman -S"
alias pacupd="sudo pacman -Syyy"
alias pacupg="sudo pacman -Syu"
alias yayupg="yay -Syu"
alias yayinstall='yay -S'
alias yayremd='yay -Rcns'
alias yayrem='yay -Rns'
alias yaysearch='yay -Ss'


#Apps

alias polylaunch='~/.config/polybar/launch.sh'

#Git
alias ga="git add"
alias gc="git clone"
alias gcm="git commit -m"
alias gs="git status"
alias gl="git log"
alias gph="git push"
alias gpl="git pull"

#protonvpn
alias vpnc="sudo protonvpn c"
alias vpnd="sudo protonvpn d"
alias vpnr="sudo protonvpn r"


alias bloks='~/.color-toys/bloks'
alias elfman='~/.color-toys/elfman'
alias fetch='neofetch'


