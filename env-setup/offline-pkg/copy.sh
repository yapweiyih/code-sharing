# aws s3 cp python_packages/xgboost/python-package-xgb.zip s3://wy-bucket-project1/python_packages/xgboost/ --sse-kms-key-id ${KEY} --sse aws:kms
# aws s3 sync python-package-xgb.zip python_packages/ 

aws s3 cp cba-env.zip s3://wy-bucket-project1/python_packages/ --sse-kms-key-id a050c40f-c280-453c-a0d9-269cbefccb97 --sse aws:kms


# panda-profile source
aws s3 cp master.zip s3://wy-bucket-project1/python_packages/ --sse-kms-key-id a050c40f-c280-453c-a0d9-269cbefccb97 --sse aws:kms

