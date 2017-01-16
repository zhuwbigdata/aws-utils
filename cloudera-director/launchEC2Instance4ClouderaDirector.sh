#!/bin/bash
# https://www.cloudera.com/documentation/director/latest/topics/director_deployment_start_launcher.html
BASE_DIR=$(dirname $0)
source ${BASE_DIR}/../bin/setenv.sh
${BASE_DIR}/../ec2/runInstanceByImgIDInstanceTypeKeyNameSGIDSubnetID.sh ${AMI_ID_CENTOS} ${INSTANCE_TYPE_C3_L} ${EC2_KEY_NAME} ${SECURITY_GROUP} ${SUBNET_ID} 
