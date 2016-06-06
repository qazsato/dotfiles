# nvm
if [[ -s ~/.nvm/nvm.sh ]];
  then source ~/.nvm/nvm.sh
fi

#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
# 右プロンプト非表示
PROMPT=$BLUE'[${USER}@${HOST}] %(!.#.$) '$WHITE
RPROMPT=$GREEN'[%~]'$WHITE
setopt transient_rprompt

# poweline
function powerline_precmd() {
    PS1="$(~/powerline-shell.py $? --shell zsh 2> /dev/null)"
  }

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}

if [ "$TERM" != "linux" ]; then
  install_powerline_precmd
fi
