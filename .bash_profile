#!/bin/bash

if test -f ~/.profile ; then
  source ~/.profile
fi

if shopt -q login_shell; then
    [[ -f ~/.bashrc ]] && source ~/.bashrc
    [[ -t 0 && $(tty) == /dev/tty1 && ! $DISPLAY ]] && dbus-run-session sway
else
    exit 1 # Somehow this is a non-bash or non-login shell.
fi
