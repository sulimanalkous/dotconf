#!/bin/bash
# Script to get current keyboard layout shortcut name

curkeymap=$(swaymsg -t get_inputs | jq '.[0].xkb_active_layout_name' | jq --raw-output | awk '{print $1;}')

declare -A arr=([English]="EN" [Arabic]="AR")

echo ${arr[$curkeymap]}
