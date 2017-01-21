#!/bin/bash
check_usage() {
  if [ $# -lt 1 ]
  then
    echo "Usage:"
    echo "$0  [filters, Name=string,Values=string,string..., e.g. Name=attachment.instance-id, Values=i-xxx"
    exit 1
  fi
}
check_usage $*
aws ec2 describe-volumes --filters $*
