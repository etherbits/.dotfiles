# Lines configured by zsh-newuser-install
. "$HOME/.asdf/asdf.sh"

HISTFILE=~/.histfile
HISTSIZE=200
SAVEHIST=200
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/etherbits/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source ~/.profile

alias dotgit='/usr/bin/git --git-dir=/home/etherbits/.dotfiles/ --work-tree=/home/etherbits'

alias vim=nvim

export EDITOR=nvim

export PATH="$HOME/timer:$PATH"


# custom commands
pf(){
  if [[ $# -eq 1 ]]; then
      selected=$1
  else
      selected=$(find  ~/projects ~/ -mindepth 1 -maxdepth 1 -type d | fzf)
  fi

  if [[ -z $selected ]]; then
      exit 0
  fi

  selected_name=$(basename "$selected" | tr . _)

  if ! tmux has-session -t=$selected_name 2> /dev/null; then
    tmux new-session -s $selected_name -c $selected
  else
    tmux attach-session -t $selected_name
  fi

}

zle -N project-find pf

bindkey ^f project-find

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

unzipd(){
  if [[ $# != 1 ]]; then echo I need a single argument, the name of the archive to extract; return 1; fi
  target="${1%.zip}"
  unzip "$1" -d "${target##*/}"
}

unzipad(){
  for zip in *.zip
  do
    dirname=`echo $zip | sed 's/\.zip$//'`
    if mkdir "$dirname"
    then
      if cd "$dirname"
      then
        unzip ../"$zip"
        cd ..
        # rm -f $zip # Uncomment to delete the original zip file
      else
        echo "Could not unpack $zip - cd failed"
      fi
    else
      echo "Could not unpack $zip - mkdir failed"
    fi
  done
}

ocrmanga(){
  mkdir og && mv *.* og && mokuro -d True og
}

cdmedia(){
  cd /mnt/store/media
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


# Created by `pipx` on 2023-11-13 16:46:52
export PATH="$PATH:/home/etherbits/.local/bin"
