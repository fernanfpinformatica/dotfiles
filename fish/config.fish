############################################################################
# Environment Variables
############################################################################
set --global --export DOTFILES_REPO $HOME/dotfiles
set --global --export GIT_GLOBAL_NAME  "Fernando Arias"
set --global --export GIT_GLOBAL_EMAIL "contact@ferarias.dev"
set --global --export GIT_AUTHOR_NAME     $GIT_GLOBAL_NAME
set --global --export GIT_COMMITTER_NAME  $GIT_GLOBAL_NAME
set --global --export GIT_AUTHOR_EMAIL    $GIT_GLOBAL_EMAIL
set --global --export GIT_COMMITTER_EMAIL $GIT_GLOBAL_EMAIL
set --global --export HOMEBREW_BUNDLE_NO_LOCK true
set --global --export HOMEBREW_NO_AUTO_UPDATE true
set --global --export fish_greeting ''
set --global --export HOMEBREW_CASK_OPTS "--no-quarantine"
set --global --export LC_ALL es_ES.UTF-8 # Set locale
set --global --export LANG es_ES.UTF-8   # Set locale
set --global --export BAT_THEME          Dracula

############################################################################
# PATH setup
############################################################################
# /usr/local/bin is where brew symlinks most executables it installs
# /usr/local/sbin is where brew symlinks some of its executables
# By putting these paths before $fish_user_paths, they will take precedence
# over system provided programs
set --global --export fish_user_paths \
    /usr/local/bin \
    /usr/local/sbin \
    $fish_user_paths


############################################################################
# Init Starship
############################################################################
source $DOTFILES_REPO/starship/initializer.fish
