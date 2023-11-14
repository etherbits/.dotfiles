# Lines configured by zsh-newuser-install
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

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Created by `pipx` on 2023-11-13 16:46:52
export PATH="$PATH:/home/etherbits/.local/bin"
