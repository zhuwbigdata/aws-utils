#!/bin/bash
# Once done, add the following in /etc/cloud/cloud.cfg:
# preserve_hostname: true
# Then reboot EC2 instance
check_usage() {
  if [ $# -lt 1 ]
  then
    echo "Usage:"
    echo "$0  [persistent_host_name]" 
    exit 1
  fi
}
check_usage $*
sudo hostnamectl set-hostname --static %1
