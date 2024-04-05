#!/bin/bash

# create vpc

aws ec2 create-vpc --cidr-block "192.168.0.0/16" \ 
--tag-specifications "ResourceType=vpc, Tags=[{key=Name,Value=learning}]"
# Vpc Id

aws ec2 create-subnet \
    --vpc-id ""\
    --tag-specifications "ResourceType=subnet, Tags=[{key=Name,Value=web-1}]" \
    --cidr-block "192.168.1.0/24" \
    --availability-zone "ap-south-1b"
