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
alias polykill='killall -q polybar'
alias speedtest='speedtest-cli --bytes'

#Git
alias ga="git add"
alias gc="git clone"
alias gcm="git commit -m"
alias gs="git status"
alias gl="git log"
alias gps="git push"
alias gpl="git pull"

#protonvpn
alias vpnc="sudo protonvpn c"
alias vpnd="sudo protonvpn d"
alias vpnr="sudo protonvpn r"


alias bloks='~/.color-toys/bloks'
alias elfman='~/.color-toys/elfman'
alias fetch='neofetch'

alias menu.xml='vim ~/.config/openbox/menu.xml'

# Check for an interactive session
# [ -z "$PS1" ] && return


#_PROMPT() {
 #   _EXIT_STATUS=$?
  #  [ $_EXIT_STATUS != 0 ] && _EXIT_STATUS_STR=" \[\033[38;5;7m\][\[$(tput sgr0)\]\[\033[38;5;9m\]$_EXIT_STATUS\[$(tput sgr0)\]\[\033[38;5;7m\]]\[$(tput sgr0)\]"
#
#	_BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
#	if [ ! $_BRANCH == "" ]
#	then
#		_BRANCH_STR="[\[$(tput sgr0)\]\[\033[38;5;11m\]$_BRANCH\[$(tput sgr0)\]\[\033[38;5;7m\]]"
#	else
#		_BRANCH_STR=""
#	fi
#
 #   PS1="\[\033[38;5;14m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;6m\]\h\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;7m\]╺─╸\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;7m\][\[$(tput sgr0)\]\[\033[38;5;14m\]\W\[$(tput sgr0)\]\[\033[38;5;7m\]]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;7m\]$_BRANCH_STR\[$(tput sgr0)\]\[\033[38;5;15m\] \n\[$(tput sgr0)\]\[\033[38;5;7m\][\[$(tput sgr0)\]\[\033[38;5;11m\]\A\[$(tput sgr0)\]\[\033[38;5;7m\]]\[$(tput sgr0)\]\[\033[38;5;15m\]$_EXIT_STATUS_STR \[$(tput sgr0)\]\[\033[38;5;7m\]>>\[$(tput sgr0)\] "
  #  unset _EXIT_STATUS_STR
	#unset _EXIT_STATUS
	#unset _BRANCH_STR
	#unset _BRANCH
	#◙
#}

#PROMPT_COMMAND=_PROMPT


#PS1="\n \[\e[30;48;5;218m \u \[\e[30;48;5;223m\[\e[38;5;218m\[\e[38;5;0m $PWD \[\e[0m\[\e[38;5;223m \[\e[36;1;36m \n $ "

#force_color_prompt=yes
