#!/bin/bash

#
# Script for setup before starting
#
# HOW-TO-USE:
# 1. Change permission: sudo chmod +x ./setup.sh
# 2. Execute script: sudo ./setup.sh
#
# NOTE: If you do not have sudo installed, I assume you are
#       using a root user and do not need sudo for this script.
#

##################################################

# Function to check if running as root
check_sudo() {
    if [ "$(id -u)" -eq 0 ]; then
        return 0  # Running as root
    else
        return 1  # Not running as root
    fi
}

# The command
COMMAND="xhost +local:docker"

if check_sudo; then
    # Running as root, execute command
    $COMMAND
else
    # Not running as root, use sudo for comannd
    sudo $COMMAND
fi
