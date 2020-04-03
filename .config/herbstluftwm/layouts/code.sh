#!/usr/bin/env bash

# How to find frame index to use in rule
# via 'hc layout' output
#
# Example output:
# ╾─┐ horizontal 65% selection=0 <------ Note!
#   ├─┐ horizontal 45% selection=0 <------ Note!
#   │ ├─┐ vertical 50% selection=0 <------ Note!
#   │ │ ├─╼ vertical:
#   │ │ └─╼ vertical:
#   │ └─╼ vertical:
#   └─╼ vertical:
#
# Example frame index: 000

spawn_with_rules() {
    (
        # this rule also requires, that the client
        # sets the _NET_WM_PID property
        herbstclient rule once pid=$BASHPID maxage=10 "${RULES[@]}"
        exec "$@"
    ) &
}

herbstclient load 2 "$(< ~/.config/herbstluftwm/layouts/code.layout)"
herbstclient use_index 1

# LEFT TOP
RULES=( tag=2 index=000 focus=off )
spawn_with_rules urxvt -e nano lefttop.txt

# LEFT BOTTOM
RULES=( tag=2 index=001 focus=off )
spawn_with_rules urxvt -e nano leftbottom.txt

# CENTER
RULES=( tag=2 index=011 focus=off )
spawn_with_rules code

# RIGHT
RULES=( tag=2 index=111 focus=off )
spawn_with_rules firefox