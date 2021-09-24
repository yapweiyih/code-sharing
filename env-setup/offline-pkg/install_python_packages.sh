#!/usr/bin/env bash

BUCKET='s3://wy-bucket-project1/python_packages/v1'
LOCAL_DIR='~/SageMaker/python_packages/v1'
KEY='a050c40f-c280-453c-a0d9-269cbefccb97'

# aws s3 sync ${BUCKET} ${LOCAL_DIR} --sse-kms-key-id ${KEY} --sse aws:kms
aws s3 sync ${BUCKET} ${LOCAL_DIR}
pip install ${LOCAL_DIR}/*
