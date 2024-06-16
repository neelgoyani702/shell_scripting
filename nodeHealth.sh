#!/bin/bash

###########################################
# Author: Neel Goyani
# Date: 15-06-2024
#
# Description: This script will check the health of the node
#
# Version: 1.0
###########################################

set -x # Enable debugging
set -e # Stop on error
set -o pipefail # Stop on pipe fail 

df -h

free -g

nproc

ps -ef

ps -ef | grep "Neel" | awk -F" " '{print $2}'