#!/bin/bash
check_usage() {
  if [ $# -lt 1 ]
  then
    echo "Usage:"
    echo "$0  [vpc-id]"
    exit 1
  fi
}
check_usage $*
aws ec2 describe-subnets --filters "Name=vpc-id,Values=$1"
