#!/bin/bash
check_usage() {
  if [ $# -lt 3 ]
  then
    echo "Usage:"
    echo "$0  [resource-id] [key] [value]"
    exit 1
  fi
}
check_usage $*
aws ec2 create-tags --resources $1 --tags Key=$2,Value=$3 
 
 
