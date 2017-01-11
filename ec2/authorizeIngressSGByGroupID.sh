#!/bin/bash
check_usage() {
  if [ $# -lt 1 ]
  then
    echo "Usage:"
    echo "$0  [sg-group-id] [cli-input-json-file]"
    exit 1
  fi
}
check_usage $*
# Inbound connections from what specified
aws ec2 authorize-security-group-ingress --group-id $1 --cli-input-json file://$2
