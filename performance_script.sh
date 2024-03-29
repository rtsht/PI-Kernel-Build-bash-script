#!/bin/bash

# Trap to catch a USR2 signal and commence exit procedure
trap clean_exit SIGUSR2

# Variables set for executables
TOP=/usr/bin/top
AWK=/usr/bin/awk
SUDO=/usr/bin/sudo
CHMOD=/bin/chmod
STAT=/usr/bin/stat
LED=/sys/class/leds/led0/
GREP=/bin/grep

# Handling of USR2 signal to gracefully exit
clean_exit() {
run=false
}

# Work around to the shellcheck 2016 error bug
awk() {
"$AWK" "$1";
}

# Function to get cpu load per second
set_times() {
  if (( $(echo "$1 < 20" | bc -l) )) ; then
    ON=0.2
    OFF=0.8
  elif (( $(echo "$1 < 40" | bc -l) )) ; then
    ON=0.4
    OFF=0.6
  elif (( $(echo "$1 < 60" | bc -l) )) ; then
    ON=0.6
    OFF=0.4
  elif (( $(echo "$1 < 80" | bc -l) )) ; then
    ON=0.8
    OFF=0.2
  else
    ON=1
    OFF=0
  fi
}

# Save existing permissions then allow writing by 'other'
OG_LED_BRT=$($STAT -c '%a' ${LED}brightness)
OG_LED_TRIG=$($STAT -c '%a' ${LED}trigger)
$SUDO $CHMOD o+w ${LED}brightness
$SUDO $CHMOD o+w ${LED}trigger

# Save existing trigger type then change to none
OLD_TRIGGER=$( $GREP -o '\[.*]' < ${LED}trigger)
echo none >${LED}trigger

# Main loop to blink per cpu load
run=true
while $run ; do
	set_times "$($TOP -n 1 -b | awk '/Cpu/ { print 100 - $8 }')"
	echo 1 >${LED}brightness
	sleep $ON
	echo 0 >${LED}brightness
	sleep $OFF
done

# Restore existing file state and permission
echo "${OLD_TRIGGER:1:-1}" >${LED}trigger
$SUDO $CHMOD "$OG_LED_TRIG" ${LED}trigger
$SUDO $CHMOD "$OG_LED_BRT" ${LED}brightness
echo Ending loop and exiting nicely...!
