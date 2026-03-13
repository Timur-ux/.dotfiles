#
# ~/.bashrc
#


source ./my-env.sh
source ./.config/scripts/git-completion.bash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

GREEN="\[$(tput setaf 4)\]"
RESET="\[$(tput sgr0)\]"
PS1=$GREEN'\u@\h:\w\n'$RESET"$ "


if [[ "$(which fortune)" != "" ]] && [[ "$(which cowsay)" != "" ]]; then
	fortune | cowsay
fi
