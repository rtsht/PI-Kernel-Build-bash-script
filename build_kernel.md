#### NAME
build_kernel

#### SYNOPSIS
**build_kernel**

#### DESCRIPTION
This is a script designed to automate the fetching, building and installation of a Linux kernel for a raspberry pi 4. It is intended for the Raspberry Pi OS. The script will clone the repo that has the config file, then clone the kernel and build the kernel and modules based on that config. The config is based on bcm2711 with two changes: removal of camera and v4l support and appending my student number s3791004 to the version. Just after compilation is complete, the script sends a USR2 signal targeted to a performance script also bundled with this project. The signal allows the performance script to exit gracefully and restore any changes made to system files.  
The build_kernel script is open-source under GNU GPLv3.

#### AUTHORS
Andrew Waltos. Student at RMIT, student number s3791004.

#### REFERENCES
+ [Week 7 Lab Sheet](https://rmiteduau-my.sharepoint.com/:w:/g/personal/paul_miller_rmit_edu_au/EV4_ThoTN6JIkUfLrf7XLyYBLZbHcK9Cbhe8lULq5w8SKw)
+ [Week 8 Scripting Lecture](https://rmiteduau-my.sharepoint.com/:p:/g/personal/paul_miller_rmit_edu_au/EaiMdGM9PP9PmTStV47ZixMBipQ1_pZs9yEjKW-ocx2XvQ?e=uBDmo6)
+ [Week 9 Scripting 2 Lecture](https://rmiteduau-my.sharepoint.com/:p:/g/personal/paul_miller_rmit_edu_au/EZgwY-JRqpdEjgccN9SeCM8BmqwjxkjduihMsjBoUNfUZA?e=PIOMn5)
+ [pidof(8): find process ID of running program - Linux man page](https://linux.die.net/man/8/pidof)
+ [kill(2): send signal to process - Linux man page](https://linux.die.net/man/2/kill)
