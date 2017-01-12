#!/bin/bash
check_usage() {
  if [ $# -lt 2 ]
  then
    echo "Usage:"
    echo "$0  [vpc-id] [attribute, e.g. enableDnsSupport enableDnsHostname]"
    exit 1
  fi
}
check_usage $*
aws ec2 describe-vpc-attribute --vpc-id $1 --attribute $2
