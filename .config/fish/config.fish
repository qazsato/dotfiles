## For bobthefish
set -g theme_color_scheme dark
set -g theme_display_git_ahead_verbose yes
set -g theme_display_git_dirty_verbose yes
set -g theme_display_git_master_branch yes
set -g theme_git_worktree_support yes
set -g theme_display_date no

## For Ruby
rbenv init - | source

## For peco
function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
end

## For ghq
function fish_user_key_bindings
  bind \cr 'peco_select_history (commandline -b)'
  bind \c] peco_select_ghq_repository
end