#!/bin/bash
check_usage() {
  if [ $# -lt 1 ]
  then
    echo "Usage:"
    echo "$0  [filters, Key=string,Values=string,string...]"
    exit 1
  fi
}
check_usage $*
aws ec2 describe-route-tables --filter $*
