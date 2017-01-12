#!/bin/bash
check_usage() {
  if [ $# -lt 1 ]
  then
    echo "Usage:"
    echo "$0  [instance-id, space as delimiter]"
    exit 1
  fi
}
check_usage $*
aws ec2 describe-instances --instance-ids $1 
