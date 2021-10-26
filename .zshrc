alias dcb='docker-compose build'
alias dcd='docker-compose down'
alias dcu='docker-compose up -d'
alias dsp='docker system prune -af'

# prezto (https://github.com/sorin-ionescu/prezto)
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# For Ruby
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"