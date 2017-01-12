#!/bin/bash
# http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSVolumeTypes.html
# http://docs.aws.amazon.com/ElasticMapReduce/latest/DeveloperGuide/emr-plan-region.html
check_usage() {
  if [ $# -lt 4 ]
  then
    echo "Usage:"
    echo "$0  [volume_type:gp2,io1,st1,sc1] [volume_size_gb] [region] [AZ]"
    exit 1
  fi
}
check_usage $*
aws ec2 create-volume --volume-type $1 --size $2 --region $3 --availability-zone $4
