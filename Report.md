# Performance Report on Raspberry Pi 4 (1GB)

## Introduction
This is a report on the performance of the Pi4 1GB model. It intends to outline how the Pi performs during test suites: Compilation, Compression, Memory, and Python. These tests target the Pi's Processor, System, and Memory components.  
The report will discuss test selection and how these tests were run. Then it will look at the results and offer an analysis of how the Pi4 compares to other systems.
## Method
Tests were run through [Phoronix Test Suite](https://www.phoronix-test-suite.com) \(PTS\) via the CLI on the Pi. PTS is a program that has a collection of test suites and can execute a selection of tests after downloading required files and dependencies.  
The 4 tests mentioned above were selected because they stress test different components of the Pi in ways that the Pi is commonly used. The Compilation test is relevant because a Pi running Linux may undergo many compilation scenarios if a user is tweaking a kernel over and over to achieve a specific desired build. Compression is often used when backing up and restoring. Memory is also an interesting test to compare against similar Pi models that have higher RAM. Python is a commonly used language in developing on a Pi.
## Results
### Compression
The 7-Zip compression test in this suite returned a score of 3458 MIPS \(Million Instructions Per Second\).  
![7-Zip Test](/compression-s3791004/result-graphs/1.svg "7-Zip Test Result")  
this blah

## Analysis

## Conclusions

