############################################################################
# Environment Variables
############################################################################
set --global --export DOTFILES_REPO $HOME/dotfiles
set --global --export HOMEBREW_BUNDLE_NO_LOCK true
set --global --export HOMEBREW_NO_AUTO_UPDATE true
set --global --export fish_greeting ''
set --global --export HOMEBREW_CASK_OPTS "--no-quarantine"
set --global --export LC_ALL es_ES.UTF-8 # Set locale
set --global --export LANG es_ES.UTF-8   # Set locale
set --global --export BAT_THEME          Dracula

set --universal FZF_DEFAULT_COMMAND 'fd' # Set up fzf to use the amazingly fast fd [https://github.com/sharkdp/fd]

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
