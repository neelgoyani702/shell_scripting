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

df -h

free -g

nproc