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
aws ec2 delete-key-pair --key-name $1
