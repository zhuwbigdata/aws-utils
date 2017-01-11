#!/bin/bash
check_usage() {
  if [ $# -lt 1 ]
  then
    echo "Usage:"
    echo "$0  [cli-input-json]"
    exit 1
  fi
}
check_usage $*
aws ec2 create-tags --cli-input-json $1 
 
 
