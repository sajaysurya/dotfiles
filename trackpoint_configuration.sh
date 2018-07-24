#!/bin/bash
echo -n 150 > /sys/devices/platform/i8042/serio1/serio2/speed
echo -n 250 > /sys/devices/platform/i8042/serio1/serio2/sensitivity
