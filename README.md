# AWS Resource Tracker (Bash + AWS CLI)

This project is a simple Bash script that reports AWS resource usage using the AWS CLI and automates execution using cron.

## What the script does
- Lists S3 buckets
- Lists EC2 instances (Instance ID and state)
- Lists Lambda functions
- Lists IAM users

## Tools used
- Bash
- AWS CLI v2
- Linux (Ubuntu)
- Cron

## How to run manually
```bash
chmod +x aws_resource_tracker.sh
./aws_resource_tracker.sh

#Cron Automation
0 8 * * * /home/ubuntu/aws_resource_tracker.sh >> /home/ubuntu/aws_resource_report.log 2>&1

#Output is formatted using AWS CLI --query and --output table
