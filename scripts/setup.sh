#!/bin/bash

# Create the deployment directory
mkdir -p /home/ec2-user/my-java-app

# Set permissions for the deployment directory
chown -R ec2-user:ec2-user /home/ec2-user/my-java-app
chmod -R 755 /home/ec2-user/my-java-app