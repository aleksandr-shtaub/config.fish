if status is-interactive
    # Commands to run in interactive sessions can go here
end


#set -x XDG_CONFIG_HOME "~/.config"
set -x HOMEBREW_BUNDLE_FILE_GLOBAL "~/.config/brew/Brewfile"
set -x EDITOR nvim
set -x GPG_TTY (tty)
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"
set -x PYENV_ROOT $HOME/.pyenv
set fish_user_paths $PYENV_ROOT/bin $fish_user_paths

abbr --add gpg-keys gpg --list-secret-keys --keyid-format=long


pyenv init - | source
direnv hook fish | source

