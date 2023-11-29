#!/bin/bash

# upload and run this file on client's shell prompt. ( change permission to chmod +x)

echo "Creating an assume Iam role"
echo " --------------------------"
ROLE_NAME="tf_pipeline_assumerole_pk2023"
EXID=""
# read -p "Role name : " ROLE_NAME
read -p "ExternalID : " EXID

read -p "Continue? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
echo "Creating the role.."

jq -n --arg appname "$appname2" '{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "sts:AssumeRole"
            ],
            "Principal": {
                "Service": [
                    "ec2.amazonaws.com"
                ]
            }
        }
    ]
}' > trust-policy.json

jq -n --arg appname "$appname" '{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": {
                "AWS": "arn:aws:iam::254964228601:root"
            },
           
            "Action": "sts:AssumeRole",
            "Condition": {
                "StringEquals": {
                    "sts:ExternalId": "'$EXID'"
                }
            }
        }
    ]
}' > AssumeRole-Trust-Policy.json

# create iam role with trust-policy.json ploicy and add AssumeRole-Trust-Policy.json
aws iam create-role \
          --role-name $ROLE_NAME \
          --assume-role-policy-document file://Policy.json
aws iam update-assume-role-policy \
          --role-name $ROLE_NAME \
          --policy-document file://AssumeRole-Trust-Policy.json

# somereason i have wait here for few secs untill update newly created role before applying following polices
echo "Attaching policies.."
sleep 10
echo "All done! wait for the output"
# attching aws manged plocies / it will replace the trust-policy.json policy alreday attached to the role. 
aws iam attach-role-policy \
          --policy-arn arn:aws:iam::aws:policy/AmazonS3FullAccess \
          --role-name $ROLE_NAME 
aws iam attach-role-policy \
          --policy-arn arn:aws:iam::aws:policy/IAMFullAccess \
          --role-name $ROLE_NAME 
aws iam attach-role-policy \
          --policy-arn arn:aws:iam::aws:policy/AmazonRDSFullAccess \
          --role-name $ROLE_NAME 
aws iam attach-role-policy \
          --policy-arn arn:aws:iam::aws:policy/AmazonEC2FullAccess \
          --role-name $ROLE_NAME 


aws iam get-role --role-name $ROLE_NAME --query 'Role.[RoleName, Arn]' --output text
# aws iam get-role --role-name tf-pipeline-automation-assume-role --query 'Role.[RoleName, Arn]' --output text
