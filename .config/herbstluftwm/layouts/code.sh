#!/usr/bin/env bash

# How to find frame index to use in rule
# via 'hc layout' output
#
# Example output:
# ╾─┐ horizontal 65% selection=0 <------ Note!
#   ├─┐ horizontal 45% selection=1 <------ Note!
#   │ ├─┐ vertical 50% selection=0 <------ Note!
#   │ │ ├─╼ vertical:
#   │ │ └─╼ vertical:
#   │ └─╼ vertical:
#   └─╼ vertical:
#
# Example frame index: 010 (Read 'selection' from top to bottom)

source ~/.config/herbstluftwm/scripts/spawnWithRules.sh

herbstclient load 2 "$(< ~/.config/herbstluftwm/layouts/code.layout)"
herbstclient use_index 1

MAXAGE=5

# LEFT TOP
CIENTINFO=""
RULES=( tag=2 index=000 focus=off )
spawn_with_rules urxvt

# LEFT BOTTOM
CIENTINFO=""
RULES=( tag=2 index=001 focus=off )
spawn_with_rules urxvt

# CENTER
CIENTINFO="class=Code"
RULES=( tag=2 index=011 focus=off )
spawn_with_rules code

# RIGHT
CIENTINFO=""
RULES=( tag=2 index=111 focus=off )
spawn_with_rules firefox