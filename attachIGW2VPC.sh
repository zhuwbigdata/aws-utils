#!/bin/bash
check_usage() {
  if [ $# -lt 2 ]
  then
    echo "Usage:"
    echo "$0  [internet-gateway-id] [vpc-id]"
    exit 1
  fi
}
check_usage $*
aws ec2 attach-internet-gateway --internet-gateway-id $1 --vpc-id $2 
