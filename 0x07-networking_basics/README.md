# 0x07. Networking basics #0

## Table of contents

- [About](#about)
- [Overview](#overview)
  - [Learning Objectives](#learning-objectives)
	- [OSI Model](#osi-model)
	- [What is a LAN](#what-is-a-lan)
	- [What is a WAN](#what-is-a-wan)
	- [What is the Internet](#what-is-the-internet)
	- [TCP/UDP](#tcpudp)
  - [Requirements](#requirements)
- [My process](#my-process)
  - [Built with](#built-with)
  - [What I learned](#what-i-learned)
- [Author](#author)

## About

> This is a solution to the [ALX](https://www.alxafrica.com/) project on Regular Expressions.

## Overview

### Learning Objectives

> At the end of this project I am expected to [explain to anyone](https://fs.blog/feynman-learning-technique/), without the help of Google:

#### OSI Model

> - What it is
> - How many layers it has
> - How it is organized

#### What is a LAN

> - Typical usage
> - Typical geographical size

#### What is a WAN

> - Typical usage
> - Typical geographical size

#### What is the internet

> - What is an IP address
> - What are the 2 types of IP address
> - What is `localhost`
> - What is a subnet
> - Why IPv6 was created

#### TCP/UDP

> - What are the 2 mainly used data transfer protocols for IP (transfer level on the OSI schema)
> - What is the main difference between TCP and UDP
> - What is a port
> - Memorize SSH, HTTP and HTTPS port numbers
> - What tool/protocol is often used to check if a device is connected to a network

### Requirements

> - **Allowed editors**: `vi`, `vim`, `emacs`.
> - **Interpretation/Compilation Environment**: Ubuntu 20.04 LTS using python3 (version 3.8.5).
> - **New Line Requirement**: All your files should end with a new line
> - **Shebang Line Requirement**: The first line of all your files should be exactly `#!/usr/bin/env bash`
> - **Mandatory README**: A `README.md` file, at the root of the folder of the project, is mandatory
> - **Code Style**: Your Bash script must pass `Shellcheck` (version `0.7.0`) without any error
> - **Executable Files**: All your Bash script files must be executable
> - **Documentation Standards**: The second line of all your Bash scripts should be a comment explaining what is the script doing.
For multiple choice question type tasks, just type the number of the correct answer in your answer file, add a new line for every new answer

## My process

### Built with

> - Bash scripts
> - Unix commands

### What I learned

> - The OSI model is a conceptual model that characterizes the communication functions of a telecommunication network without regard to their underlying internal structure. It is organised into 7 layers with physical layers and application layers being the lowest and highest levels, respectively.

> - LAN is a network of computers within a local environment while WAN is a connection of LANs

> - IP addresses are like phone numbers or postal addresses for each computer device participating in a computer network while MAC addresses are unique identifiers of a network interface.

> - TCP and UDP are the two main protocols for transferring data over an IP network where TCP provides a more reliable but slower communication with error-checking in relation to UDP, which is connectionless hence, faster but less reliable than TCP.

> - `netstat` can be used to show listening sockets (IP and port) using:
```bash
sudo netstat -lp
```

> - `ping` command can be used to check if a connection is stable or online by pinging a target IP address. When used on google's IP `8.8.8.8`, it helps to check the speed of your internet. Example:
```bash
ping -c 5 8.8.8.8
```

## Author

> - Email - vhuclark@gmail.com
> - Twitter - [@huclark\_](https://www.twitter.com/huclark_)
