#!/bin/sh

aws ec2 run-instances \
--region ap-south-1 \
--image-id ami-05695932c5299858a \
--count 1 \
--instance-type t2.micro \
--key-name Amit-Mumbai \
--user-data file://./user-data-codedeplot.txt \
--iam-instance-profile Name=EC2CodeDeploy \
--tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=Demo-CodeDeploy-Prod}]' \
--security-groups Sree-Demo-SG-All-IP-Open
