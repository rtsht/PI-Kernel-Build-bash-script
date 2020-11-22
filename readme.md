# Unix Sys Admin and Programming

## Assignment 2 for SP 3 in 2020
This is an assignment to to showcase scripting in Linux using bash and other Linux utilities whilst displaying efficient and good programming practices. It was written and tested on a raspberry pi 4 and the scripts are intended to be run on a pi 4. Some performance testing is also discussed regarding the pi 4.

### Written by:
Project by Andrew Waltos whilst studying at RMIT. Student Number s3791004.

### Contents:
[build_kernel](/build_kernel)  
A script to compile pull the latest linux kernel for raspberry pi and compile it based on a custom config which excludes camera and v4l support from the build and append my student number to the version.

[build_kernel.md](/build_kernel.md)
Man page for the build_kernel script

[.config](/.config)
A configuration based on default board bcm2711 config with camera and v4l support removed and my student number appended to the version.

[performance_script](/performance_script)  
A script that blinks the green led on the pi respective to CPU load.

[performance_script.md](/performance_script.md)
Man page for the performance_script script.

[readme.md](/readme.md)  
This file - a description of the project.

[Report.md](/Report.md)
A written report about the performance of the Pi4 in various benchmarking tests for System, Processor and Memory operations.

[git_log](/git_log)  
An exported log of Git commits over the development of this project

### Resources used:
All code and docs written on a Raspberry Pi 4 using bash and markdown. Utilities used: [git](https://www.git-scm.com) and [GitHub](https://www.github.com), [shellcheck](https://www.shellcheck.net/), [Linux Kernel](https"//kernel.org), [xconfig](https://en.wikipedia.org/wiki/Xconfig) and various built-ins and packages bundled with [Raspberry Pi OS](https://www.raspberrypi.org/software/).

