alias dcb='docker-compose build'
alias dcd='docker-compose down'
alias dcu='docker-compose up -d'
alias dcp='docker container prune -f & docker image prune -f & docker volume prune -f'
alias dsp='docker system prune -af'

## For Homebrew
eval (/opt/homebrew/bin/brew shellenv)

## For bobthefish
set -g theme_color_scheme dark
set -g theme_display_git_ahead_verbose yes
set -g theme_display_git_dirty_verbose yes
set -g theme_display_git_master_branch yes
set -g theme_display_date no

set fish_greeting
function fish_greeting
end

## For Ruby
rbenv init - | source

## For Python
set -x PATH $HOME/.pyenv/shims $PATH

## For Node
set -x PATH $HOME/.nodebrew/current/bin $PATH

## For peco
function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
end

## For ghq
function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
  bind \c] peco_select_ghq_repository
end

## For PostgreSQL
set -g fish_user_paths "/opt/homebrew/opt/postgresql@12/bin" $fish_user_paths

## For MySQL
set -g fish_user_paths "/opt/homebrew/opt/mysql@5.7/bin" $fish_user_paths