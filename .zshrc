# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/etherbits/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#
alias dotgit='/usr/bin/git --git-dir=/home/etherbits/.dotfiles/ --work-tree=/home/etherbits'

alias vim=nvim

# custom commands
pf(){
  if [ "$1" ]; then
   cd $(find ~/ ~/.config ~/projects -mindepth 1 -maxdepth 1 | fzf -q "$1" -1)
  else
   cd $(find ~/ ~/.config ~/projects -mindepth 1 -maxdepth 1 | fzf)
  fi 
}

qc(){
  git add .
  git commit -m "$1"
}

qcp(){
  git add .
  git commit -m "$1"
  git push origin main
}

ghme(){
  xdg-open https://github.com/etherbits
}

qcpdots(){
  dotgit add -u
  dotgit commit -m "$1"
  dotgit push origin main
}

i(){
	sudo pacman -S "$1"
}

eval "$(starship init zsh)"


# bun completions
[ -s "/home/etherbits/.bun/_bun" ] && source "/home/etherbits/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

source /home/etherbits/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# pnpm
export PNPM_HOME="/home/etherbits/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
