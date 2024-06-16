#!/bin/bash

###########################################
# Author: Neel Goyani
# Date: 16-06-2024
#
# Description: This script will aws resource usage
#
# Version: 1.0
###########################################

set -x # Enable debugging
# set -e # Stop on error
# set -o pipefail # Stop on pipe fail

# AWS s3
echo "Print list of s3 buckets"
aws s3 ls > resources.txt

# AWS EC2
echo "Print list of ec2 instances"
# aws ec2 describe-instances
aws ec2 describe-instances --query 'Reservations[*].Instances[*].[InstanceId,InstanceType,State.Name,Tags[?Key==`Name`].Value[]]' --output text >> resources.txt
# aws ec2 describe-instances --query 'Reservations[*].Instances[*].[InstanceId,InstanceType,State.Name,Tags[?Key==`Name`].Value[]]' --output table

# AWS Lambda
echo "Print list of lambda functions"
aws lambda list-functions >> resources.txt

# AWS IAM
echo "Print list of IAM users"
aws iam list-users >> resources.txt
