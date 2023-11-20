if status is-interactive
    # Commands to run in interactive sessions can go here
end


#set -x XDG_CONFIG_HOME "~/.config"
set -x HOMEBREW_BUNDLE_FILE_GLOBAL "~/.config/brew/Brewfile"
set -x EDITOR nvim
set -x GPG_TTY (tty)
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"


abbr --add gpg-keys gpg --list-secret-keys --keyid-format=long

pyenv init - | source
