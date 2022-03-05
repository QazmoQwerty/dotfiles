#!/bin/bash
WINDOW_ID=$(xdo id -n $1)
MAIN_MONITOR=$(settings get main_monitor)
if xwininfo -id ${WINDOW_ID} | grep -q IsViewable
then
    xdo hide ${WINDOW_ID}
    bspc config -m ${MAIN_MONITOR} top_padding 0
    bspc config -m ${MAIN_MONITOR} top_monocle_padding 0
else
    xdo show ${WINDOW_ID}
    bspc config -m ${MAIN_MONITOR} top_padding 20
    bspc config -m ${MAIN_MONITOR} top_monocle_padding 5
fi

