#!/bin/bash

# A script to fetch the latest linux kernel for the Raspberry Pi4
# and compile a kernel image based on a pre-configured config
# file. This config removes camera and video4linux support and 
# also appends my student number to the version number.

# variables set for executables
GIT=/usr/bin/git
COPY=/bin/cp
SUDO=/usr/bin/sudo
APT=/usr/bin/apt
MAKE=/usr/bin/make
YES=/usr/bin/yes
SHUTDOWN=/sbin/shutdown
KILL=/bin/kill
PIDOF=/bin/pidof

# variables set for files
KERNEL=kernel7l

# Function to exit in case a step fails
fail-stop() {
	echo Exited because "$1"
	exit 1
}

# Retreive the repo with the config file 
$GIT clone --depth=1 git@github.com:s3791004/usap-a2-kernel.git || fail-stop "Git clone failed"

# Retreive the repo with the official Linux kernel
$GIT clone --depth=1 https://github.com/raspberrypi/linux || fail-stop "Git clone failed"

# Change into linux dir
cd linux || exit 1

# Install required packages
$YES | $SUDO $APT install raspberrypi-kernel-headers build-essential bc git wget bison flex libssl-dev make

# Generate a default kernel config
$MAKE bcm2711_defconfig

# Copy the pre-made config into the linux directory
$COPY ../usap-a2-kernel/.config .config 

# Compile the kernel based on the config file
$YES n | $MAKE -j4 zImage modules dtbs

# Send USR2 signal to performance_script
$KILL -12 "$($PIDOF -x performance_script.sh)"

# Back up the existing kernel and libs
$SUDO mkdir -p /boot/bkup/overlays
$SUDO $COPY /boot/*.dtb /boot/bkup/
$SUDO $COPY /boot/overlays/*.dtb* /boot/bkup/overlays/
$SUDO $COPY /boot/overlays/README /boot/bkup/overlays/
$SUDO $COPY /boot/$KERNEL.img /boot/bkup/

# Install the modules and copy the compiled files to the boot dir
$SUDO $MAKE modules_install
$SUDO $COPY arch/arm/boot/dts/*.dtb /boot/
$SUDO $COPY arch/arm/boot/dts/overlays/*.dtb* /boot/overlays/
$SUDO $COPY arch/arm/boot/dts/overlays/README /boot/overlays/
$SUDO $COPY arch/arm/boot/zImage /boot/$KERNEL.img

$SUDO $SHUTDOWN -r now

