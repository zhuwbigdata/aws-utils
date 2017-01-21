#!/bin/bash
check_usage() {
  if [ $# -lt 1 ]
  then
    echo "Usage:"
    echo "$0  [volume-id]"
    exit 1
  fi
}
check_usage $*
aws ec2 delete-volume --volume-id $1  
