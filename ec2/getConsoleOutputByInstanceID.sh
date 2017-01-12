#!/bin/bash
check_usage() {
  if [ $# -lt 1 ]
  then
    echo "Usage:"
    echo "$0  [instance-id]" 
    exit 1
  fi
}
check_usage $*
aws ec2 get-console-output --instance-id $1 
