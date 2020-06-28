#!/bin/bash
# Purpose: display CPU clock speed and temperature.
# Original Author: Vivek Gite <www.cyberciti.biz> under GPL v2.x+
# ----------------------------------------------------------------------------------------------------------------------
# Modifications made by GitHub.com/BassThatHertz:
# ----------------------------------------------------------------------------------------------------------------------
# - Added CPU clock speed (can't remember the exact source of the clock speed command)
# - Removed the "GPU temperature" after reading a comment by "onebuck" (on March 12th, 2016):
# https://www.cyberciti.biz/faq/linux-find-out-raspberry-pi-gpu-and-arm-cpu-temperature-command/
# A couple of quotes from their comment:
# "Your reading the same sensor for CPU when you say access to GPU."
# "GPU does not have a sensor independently. Just a CPU temperature can be truly accessed"
# - Other minor edits.
# ----------------------------------------------------------------------------------------------------------------------
# How to use the file:
# ----------------------------------------------------------------------------------------------------------------------
# Set permission: chmod +x stats.sh
# cd into the directory that this file is in, then enter ./stats.sh
# If you want to continually monitor the stats, enter watch -n1 ./stats.sh
# (where '1' is the update frequency in seconds. Alter if necessary).
echo $(date)
echo "------------------------------"
echo "CPU clock speed: $(vcgencmd measure_clock arm | awk 'BEGIN { FS="=" };{ print $2 / 1000000000 " GHz" }')"
CPU=$(</sys/class/thermal/thermal_zone0/temp)
echo "Temperature: $((CPU / 1000))°C"