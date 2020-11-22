#### NAME
performance_script

#### SYNOPSIS
**performance_script**

#### DESCRIPTION
This script is designed to blink the green on-board led for the Raspberry Pi in relation to the cpu load. For under 20% load, it blinks 1/5th of a second. For 20-39% load, it blinks for 2/5th of a second. And so-on until it blinks for a full second at over 80% load. The script makes some changes to system file permissions but before doing so it saves their state and restores as long as the script is exited gracefully on receipt of a USR2 signal.  
The performance_script script is open-source under GNU GPLv3.

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
