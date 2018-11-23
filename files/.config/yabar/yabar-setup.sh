#!/bin/bash

source ~/.cache/wal/colors.sh

config=$(cat ~/.config/yabar/yabar.conf)

wifi=$(ls /sys/class/net | grep -m 1 wl)
device=$(df -h / | head -n 2 | tail -n 1 | awk '{print $1}')

config=$(echo "$config" \
	| sed "s~<background_argb>~0xD8${color0: -6}~g" \
	| sed "s~<foreground_rgb>~0x${color2: -6}~g" \
	| sed "s~<wifi>~$wifi~g" \
	| sed "s~<device>~$device~g" \
	)

echo "$config" >/tmp/yabar.conf
