#!/bin/bash
#to automate gold image
# prerequsites: AWS CLI tool should be installed
a=$(aws ec2 create-image --instance-id i-02d52ed6507e66813 --name "EC2-ASP-time" --no-reboot --output json | jq -r .ImageId)
sed -i -e "s#%AMI_ID%#$a#g" auto-scale.yaml
aws cloudformation deploy --template-file auto-scale.yaml --stack-name velo-asg