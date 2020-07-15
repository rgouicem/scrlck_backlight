#!/usr/bin/env bash

kbdname="SINO WEALTH USB KEYBOARD"
path=""

function finddev() {
    for dev in /sys/class/leds/input*scrolllock ; do
	if [ "$(cat $dev/device/name)" = "$kbdname" ] ; then
	    echo $dev
	fi
    done
}

function lightkbd() {
    set -e
    while sleep 0.1 ; do
	echo 1 > $path/brightness
    done
}

path=$(finddev)

if [ "$path" = "" ] ; then
    echo "Home keyboard not found!"
    exit 1
fi

(lightkbd) &
