#Aliases

alias ls='ls --color=auto'
alias la='ls -alF --color=auto'
alias pacman='pacman --color=auto'
alias yay='yay --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias diff='diff --color=auto'

#Pacman 
alias pacdel="sudo pacman -Rd"
alias pacremd="sudo pacman -Rsnc"
alias pacrem="sudo pacman -Rsn"
alias pacsearch="pacman -Ss"
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
alias polykill='killall -q polybar'
alias speedtest='speedtest-cli'
alias nv='nvim'
alias tldr='cht.sh'
alias cd='z'

#Git
alias ga="git add"
alias gcl="git clone"
alias gcm="git commit -m"
alias gma='git commit -am'
alias gst="git status"
alias glg="git log"
alias gpsh="git push"
alias gpll="git pull"

alias gf='git reflog'
alias gta='git tag -a -m'
alias gdf='git diff'
alias gbr='git branch'
alias gch='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gsw='git switch'

#protonvpn
alias vpnc="sudo protonvpn c"
alias vpnd="sudo protonvpn d"
alias vpnr="sudo protonvpn r"
alias vpncf="sudo protonvpn c -f"

#toys
alias bloks='~/.color-toys/bloks'
alias elfman='~/.color-toys/elfman'
alias fetch='neofetch'
alias nerdinfo='~/.color-toys/nerdinfo.sh'
alias colorblocks='~/.color-toys/colorblocks'

alias menu.xml='nvim ~/.config/openbox/menu.xml'
#alias cat=bat

#configs

alias piconf='nvim ~/.config/picom.conf'
alias ncconf='nvim ~/.ncmpcpp/config'
alias neoconf='nvim ~/.config/neofetch/config.conf'
alias dunstconf='nvim ~/.config/dunst/dunstrc'
alias redshiftconf='nvim ~/.config/redshift/redshift.conf'
alias kittyconf='nvim ~/.config/kitty/kitty.conf'
alias gtkconf='nvim ~/.config/gtk-3.0/settings.ini'


#aaaaaa
alias gh='history|grep'

#cd
alias ..='cd ..'
alias ....='cd ../..'
alias ......='cd ../../..'
alias ........='cd ../../../..'

