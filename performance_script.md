#### NAME
performance_script

#### SYNOPSIS
**performance_script**

#### DESCRIPTION
This is a script designed to automate the fetching, building and installation of a linux kernel for a raspberry pi 4. It is intended for the Raspberry Pi OS. The script will clone the repo that has the config file, then clone the kernel and build the kernel and modules based on that config. The config is based on bcm2711 with with two changes: removal of camera and v4l support and appending my student number s3791004 to the version. The build_kernel script is open-source under GNU GPLv3.

#### AUTHORS
Andrew Waltos. Student at RMIT, student number s3791004.

#### REFERENCES
+ Week 8 Scripting Lecture <https://rmiteduau-my.sharepoint.com/:p:/g/personal/paul_miller_rmit_edu_au/EaiMdGM9PP9PmTStV47ZixMBipQ1_pZs9yEjKW-ocx2XvQ?e=uBDmo6)>
+ Week 9 Scripting 2 Lecture <https://rmiteduau-my.sharepoint.com/:p:/g/personal/paul_miller_rmit_edu_au/EZgwY-JRqpdEjgccN9SeCM8BmqwjxkjduihMsjBoUNfUZA?e=PIOMn5>
+ koalaman/shellcheck: Shellcheck, a static analysis tool for shell scripts <https://github.com/koalaman/shellcheck>
+ Writing shell scripts - Lesson 15: Errors and Signals and Traps (Oh, My!) - Part 2 <https://linuxcommand.org/lc3_wss0150.php>
+ Introduction to if <https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_07_01.html>
+ Linux find process by name - nixCraft <https://www.cyberciti.biz/faq/linux-find-process-name/>
+ bc command in Linux with examples - GeeksforGeeks <https://www.geeksforgeeks.org/bc-command-linux-examples/>
+ SC2016 False positive for variables to full binary path · Issue #970 · koalaman/shellcheck <https://github.com/koalaman/shellcheck/issues/970>
