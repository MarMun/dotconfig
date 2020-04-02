#! /bin/sh

# save path
P=~/.config/bspwm

# clean up first
rm "$P"/states/*

# dump state
bspc wm -d > "$P"/states/dump.json

# create receptacles from state
"$P"/scripts/extract_canvas "$P"/states/dump.json  > "$P"/states/state.json

# create rule set from state
"$P"/scripts/induce_rules "$P"/states/dump.json > "$P"/states/rules

# clean up
rm "$P"/states/dump.json