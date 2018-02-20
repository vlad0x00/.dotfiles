#!/bin/bash

source ~/.cache/wal/colors.sh

config=$(cat ~/.config/yabar/yabar.conf)

config=$(echo "$config" \
	| sed "s~<background_argb>~0xD8${color0: -6}~g" \
	| sed "s~<foreground_rgb>~0x${color2: -6}~g" \
	)

echo "$config" >/tmp/yabar.conf
