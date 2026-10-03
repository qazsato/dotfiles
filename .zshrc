alias dcb='docker compose build'
alias dcd='docker compose down'
alias dcu='docker compose up -d'
alias dcp='docker container prune -f && docker image prune -f && docker volume prune -f'
alias dsp='docker system prune -af'

# PATH (重複を除去)
typeset -U path PATH

# For Node
path=($HOME/.nodebrew/current/bin $path)

# History
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt share_history hist_ignore_all_dups hist_ignore_space hist_reduce_blanks

# Completion
typeset -U fpath
fpath=($HOMEBREW_PREFIX/share/zsh/site-functions $fpath)
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'  # 大文字小文字を区別しない
zstyle ':completion:*' menu select                    # Tab で候補を選択
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# Key bindings
bindkey -e

# For peco (Ctrl-R: 履歴検索)
peco-select-history() {
  local selected=$(fc -lnr 1 | awk '!a[$0]++' | peco --query "$LBUFFER")
  if [[ -n $selected ]]; then
    BUFFER=$selected
    CURSOR=$#BUFFER
  fi
  zle reset-prompt
}
zle -N peco-select-history
bindkey '^R' peco-select-history

# For ghq (Ctrl-]: リポジトリへ移動)
peco-select-ghq-repository() {
  local dir=$(ghq list -p | peco --query "$LBUFFER")
  if [[ -n $dir ]]; then
    BUFFER="cd ${(q)dir}"
    zle accept-line
  fi
  zle reset-prompt
}
zle -N peco-select-ghq-repository
bindkey '^]' peco-select-ghq-repository

# For zsh-autosuggestions (履歴からの入力候補。→ で確定)
source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(starship init zsh)"
