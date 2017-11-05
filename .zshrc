# prezto (https://dev.classmethod.jp/tool/zsh-prezto/)
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# powerline-shell (https://github.com/banga/powerline-shell)
function powerline_precmd() {
    PS1="$(powerline-shell --shell zsh $?)"
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

# 右プロンプト非表示
PROMPT=$BLUE'[${USER}@${HOST}] %(!.#.$) '$WHITE
RPROMPT=$GREEN'[%~]'$WHITE
setopt transient_rprompt

# nvm (https://github.com/creationix/nvm)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"