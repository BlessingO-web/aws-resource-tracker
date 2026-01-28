#!/bin/bash

##############################
# Author: Blessing Ogbonna
# # Date: 26 January 2026
# Version: v1.0
# Script: AWS Resource Usage Report
###############################

set -x

echo "S3 Buckets:"
aws s3 ls
echo

echo "ec2 instances:"
aws ec2 describe-instances \
  --query "Reservations[].Instances[].{ID:InstanceId,State:State.Name}" \
  --output table
echo

echo "Lambda Functions:"
aws lambda list-functions \
  --query "Functions[].{Name:FunctionName,Runtime:Runtime}" \
  --output table
echo

echo "IAM Users:"
aws iam list-users \
  --query "Users[].UserName" \
  --output table
echo

