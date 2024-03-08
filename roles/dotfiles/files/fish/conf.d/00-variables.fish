# Disable greeting
set -g fish_greeting

# Environemnt variables
set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_CACHE_HOME $HOME/.cache
set -gx XDG_DATA_HOME $HOME/.local/share
set -gx XDG_STATE_HOME $HOME/.local/state
set -gx XDG_BIN_HOME $HOME/.local/bin
set -gx VISUAL "code --wait"
set -gx EDITOR nvim
set -gx PAGER less
set -gx term konsole
set -gx ANSIBLE_HOME $XDG_DATA_HOME/ansible
set -gx ANSIBLE_CONFIG $XDG_CONFIG_HOME/ansible.cfg
set -gx ANSIBLE_GALAXY_CACHE_DIR $XDG_CACHE_HOME/ansible/galaxy_cache
set -gx ELECTRON_OZONE_PLATFORM_HINT auto
set -gx GTK_USE_PORTAL 1
set -gx TEXMFVAR $XDG_CACHE_HOME/texlive/texmf-var
set -gx GTK2_RC_FILES $XDG_CONFIG_HOME/gtk-2.0/gtkrc
set -gx ANDROID_USER_HOME $XDG_DATA_HOME/android

# Update path
fish_add_path $XDG_BIN_HOME
