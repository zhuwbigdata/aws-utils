#!/bin/bash
check_usage() {
  if [ $# -lt 5 ]
  then
    echo "Usage:"
    echo "$0  [ami-id] [instance-type] [ec2-key-name] [security-group-id] [subnet-id]"
    exit 1
  fi
}
check_usage $*
AMI_ID=$1
INSTANCE_TYPE=$2
KEY_NAME=$3
SECURITY_GROUP_ID=$4
SUBNET_ID=$5
aws ec2 run-instances --image-id ${AMI_ID} --count 1 --instance-type ${INSTANCE_TYPE} --key-name ${KEY_NAME} --security-group-ids ${SECURITY_GROUP_ID} --subnet-id ${SUBNET_ID} --associate-public-ip-address
