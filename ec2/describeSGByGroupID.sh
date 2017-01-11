#!/bin/bash
check_usage() {
  if [ $# -lt 1 ]
  then
    echo "Usage:"
    echo "$0  [group_ids with space as delimeter]"
    exit 1
  fi
}
check_usage $*
aws ec2 describe-security-groups --group-ids $1
