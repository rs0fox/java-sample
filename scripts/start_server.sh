#!/bin/bash
# Example script to start a Java application

# Change directory to where the JAR is located
cd /opt/codedeploy-agent/deployment-root/249035e1-06f8-4a93-94fd-033e94ce4771/d-YBOLR2M17/deployment-archive/target

# Start the Java application
java -jar my-java-app-1.0-SNAPSHOT.jar > app.log &
