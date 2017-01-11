#!/bin/bash
check_usage() {
  if [ $# -lt 2 ]
  then
    echo "Usage:"
    echo "$0  [sg-group-id] [cli-input-jsoni-file]"
    exit 1
  fi
}
check_usage $*
# Specifying TCP Egress (Allowable Outbound Connections)
aws ec2 authorize-security-group-egress --group-id $1 --cli-input-json file://$2
