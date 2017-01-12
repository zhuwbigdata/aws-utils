#!/bin/bash
check_usage() {
  if [ $# -lt 1 ]
  then
    echo "Usage:"
    echo "$0  [key-name]" 
    exit 1
  fi
}
check_usage $*
aws ec2 describe-key-pairs --key-name $1
