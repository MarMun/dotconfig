#!/usr/bin/env bash

# Requirement: bash >= 4.0 (because of the usage of $BASHPID)

spawn_with_rules() {
    (
        # this rule also requires, that the client
        # sets the _NET_WM_PID property
        herbstclient rule once pid=$BASHPID maxage=10 "${RULES[@]}"
        exec "$@"
    ) &
}

herbstclient load 2 "$(< ~/.config/herbstluftwm/layouts/code.layout)"
# herbstclient use_index 1

# spawn an xterm with uname info, but not where the focus is

# LEFT TOP
# RULES=( tag=2 index=00 focus=on )
# spawn_with_rules urxvt

# LEFT BOTTOM
RULES=( tag=2 index='/' focus=on )
spawn_with_rules urxvt

# CENTER
# RULES=( tag=2 index=01 focus=on )
# spawn_with_rules urxvt

# RIGHT
# RULES=( tag=2 index=1 focus=on )
# spawn_with_rules urxvt

# spawn an xterm in pseudotile mode
# RULES=( pseudotile=on focus=on )
# spawn_with_rules xterm