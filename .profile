#!/bin/bash

# XDG directories
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="${HOME}/.config"}
export XDG_DATA_HOME=${XDG_DATA_HOME:="${HOME}/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="${HOME}/.cache"}

if test -z "${XDG_RUNTIME_DIR}"; then
	export XDG_RUNTIME_DIR=/tmp/${UID}-runtime-dir
	if ! test -d "${XDG_RUNTIME_DIR}"; then
		mkdir -p "${XDG_RUNTIME_DIR}"
		chmod 0700 "${XDG_RUNTIME_DIR}"
	fi
fi

# NNN file manager
export NNN_OPTS="aE"
export NNN_COLORS='#0a1b2c3d;1234'
export NNN_FCOLORS='c1e2272e006033f7c6d6abc4'

# Other programs
export GNUPGHOME="${XDG_CONFIG_HOME}/gnupg"
export PASSWORD_STORE_DIR="${XDG_DATA_HOME}/password-store"
export LESSKEY="${XDG_CONFIG_HOME}/less/lesskey"
export LESSHISTFILE="${XDG_CACHE_HOME}/less/history"
export WGETRC="${XDG_CONFIG_HOME}/wgetrc"
export GDK_BACKENED="wayland"
export MOZ_ENABLE_WAYLAND=1
#export GPG_TTY=$(tty)

# Default applications
export TERMCMD="foot"
export TERMINAL="footclient"
export EDITOR="nvim"
export BROWSER="firefox"
export PAGER="less"
export LESS="-R -M --shift 5 --mouse --wheel-lines=10"

# PATH
export PATH="${PATH}:${HOME}/.local/bin:${HOME}/.cargo/bin"
