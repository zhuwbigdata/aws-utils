#!/bin/bash
BASE_DIR=$(dirname $0)
source ${BASE_DIR}/../bin/setenv.sh
source ${BASE_DIR}/setenv.local.sh
${BASE_DIR}/../ec2/runInstanceByImgIDInstanceTypeKeyNameSGIDSubnetID.sh ${AMI_ID_RHEL} ${INSTANCE_TYPE_R3_XL} ${EC2_KEY_NAME} ${SECURITY_GROUP_DB} ${SUBNET_ID_DB}
