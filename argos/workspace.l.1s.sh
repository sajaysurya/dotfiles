#!/bin/bash
num=$(xdotool get_desktop)
echo `expr $num + 1`
