#!/bin/bash
check_usage() {
  if [ $# -lt 2 ]
  then
    echo "Usage:"
    echo "$0  [key-pair-name] [private-key-pem-output]" 
    exit 1
  fi
}
check_usage $*
aws ec2 create-key-pair --key-name $1 --query 'KeyMaterial' --output text > $2
