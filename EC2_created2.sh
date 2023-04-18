#!/bin/bash

if [ -z "$1" ]; then
	echo "Error: instance name not set"
	exit 1
fi

# Create the EC2 instance and print the public IP address
aws ec2 run-instances \
	--image-id ami-06c4532923d4ba1ec \
	--instance-type t2.micro \
	--subnet-id subnet-0a17a3ab697932061 \
	--security-group-ids sg-00b90f023e0b676e6 \
	--key-name devportal \
	--tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$1}]" \
	--query 'Instances[*].InstanceId' \
	--output text \
| xargs -I {} aws ec2 describe-instances \
	--instance-ids {} \
	--query 'Reservations[*].Instances[*].PublicIpAddress' \
	--output text
 