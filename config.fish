# Put system-wide fish configuration entries here
# or in .fish files in conf.d/
# Files in conf.d can be overridden by the user
# by files with the same name in $XDG_CONFIG_HOME/fish/conf.d

# This file is run by all fish instances.
# To include configuration only for login shells, use
if status is-login
    if string match -q -- '*ghostty*' $TERM
        set -g fish_vi_force_cursor 1
    end
end
# To include configuration only for interactive shells, use
# if status is-interactive
#   ...
# end

set -g fish_cursor_default block
set -g fish_cursor_insert block
set -g fish_cursor_replace block
set -g fish_cursor_visual block

function up --description "Update system, clean dnf cache, and update Flatpaks"
    sudo dnf upgrade -y && sudo dnf clean all && flatpak update
end

alias ls='command lsd --group-dirs=first'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias lsd='/bin/ls'
