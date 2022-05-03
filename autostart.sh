#!/usr/bin/env bash

# keyboard remaps
remaps

autostart="xcompmgr dwmblocks dunst"

for program in $autostart; do
	pidof -s "$program" || setsid -f "$program"
done >/dev/null 2>&1

# Ensure that xrdb has finished running before moving on to start the WM/DE.
[ -n "$xrdbpid" ] && wait "$xrdbpid"
