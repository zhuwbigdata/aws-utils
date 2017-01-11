#!/bin/bash
check_usage() {
  if [ $# -lt 3 ]
  then
    echo "Usage:"
    echo "$0  [group-name] [description] [vpc-id]"
    exit 1
  fi
}
check_usage $*
aws ec2 create-security-group --group-name $1 --description "$2" --vpc-id $3 

