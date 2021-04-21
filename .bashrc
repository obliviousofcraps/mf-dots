#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


#PS1='\[\033[33m\]\[\033[43m\]\[\033[30m\]\A\[$(tput sgr0)\]\[\033[33m\]'
PS1="\n\[\033[1;31m\]\w\n\[\033[01;33m\]\[\033[0m\] "




export PATH="$HOME/.local/bin:$PATH"
export EDITOR=vim

HISTSIZE=20000
HISTFILESIZE=20000

# Avoid succesive duplicates in the bash command history.
export HISTCONTROL=ignoredups

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion


# Add bash aliases.
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

#tldr Completion
cachedir=~/.cache/tldr # Or whatever else the location of the tldr cache is
complete -W "$(q=($cachedir/*/*); sed 's@\.md @ @g' <<<${q[@]##*/})" tldr

source "$HOME/.cargo/env"
