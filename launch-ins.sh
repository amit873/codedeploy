#!/bin/sh
aws ec2 run-instances \
--region us-east-1 \
--image-id ami-0323c3dd2da7fb37d \
--count 1 \
--instance-type t2.micro \
--key-name virginia \
--user-data file://./user-data-codedeplot.txt \
--iam-instance-profile Name=CodeDeployInstanceRole \
--tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=Amit-CodeDeploy-Prod}]' \
--security-groups amitSG
