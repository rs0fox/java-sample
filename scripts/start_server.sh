#!/bin/bash
# Example script to start a Java application

# Change directory to where the JAR is located
cd /home/ec2-user/my-java-app

# Start the Java application (example command)
java -jar my-app.jar > app.log &
