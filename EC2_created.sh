#!/bin/bash

if [ -z "$1" ]; then
	echo "Error: instance name not set"
	exit 1
fi

# Create the EC2 instance and print the public IP address
aws ec2 run-instances \
	--image-id ami-0aa2b7722dc1b5612 \
	--instance-type t2.micro \
	--subnet-id subnet-0bae4711d45d53358 \
	--security-group-ids sg-07f47146a97563633 \
	--key-name devportal \
	--tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$1}]" \
	--query 'Instances[*].InstanceId' \
	--output text \
| xargs -I {} aws ec2 describe-instances \
	--instance-ids {} \
	--query 'Reservations[*].Instances[*].PublicIpAddress' \
	--output text

echo "$1" > new_ec2_instance_ip.txt
