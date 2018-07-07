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

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH" 
eval "$(rbenv init - zsh)"

# nvm (https://github.com/creationix/nvm)
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/kazuki-sato/.nvm/versions/node/v8.9.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/kazuki-sato/.nvm/versions/node/v8.9.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/kazuki-sato/.nvm/versions/node/v8.9.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/kazuki-sato/.nvm/versions/node/v8.9.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
