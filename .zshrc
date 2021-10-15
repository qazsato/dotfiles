alias dcb='docker-compose build'
alias dcd='docker-compose down'
alias dcu='docker-compose up -d'
alias dcp='docker container prune -f & docker image prune -f & docker volume prune -f'

# prezto (https://github.com/sorin-ionescu/prezto)
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi