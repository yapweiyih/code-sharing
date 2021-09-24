#!/usr/bin/env bash
set -ex

# Bucket Data scientist can access
BUCKET='s3://wy-bucket-project1/python_packages/v1/'
KEY='a050c40f-c280-453c-a0d9-269cbefccb97'
LOCAL_PATH='/home/ec2-user/SageMaker/env-setup/offline-pkg/python_packages/v1/'

# Demo how to install package in no internet environment
rm -rf ${LOCAL_PATH}
mkdir -p ${LOCAL_PATH}
pip download -r requirements.txt -d ${LOCAL_PATH}

# Copy to S3
aws s3 sync ${LOCAL_PATH} ${BUCKET} --sse-kms-key-id ${KEY} --sse aws:kms
