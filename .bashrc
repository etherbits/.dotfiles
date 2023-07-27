#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"

source /home/etherbits/.config/bash_commands.sh

# pnpm
export PNPM_HOME="/home/etherbits/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

alias dotgit='/usr/bin/git --git-dir=/home/etherbits/.dotfiles/ --work-tree=/home/etherbits'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
