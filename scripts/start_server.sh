#!/bin/bash

# Change directory to where the JAR file is located
cd /tmp/my-java-app

# Start the Java application (example command)
java -jar my-java-app.jar > /dev/null 2>&1 &

# Optionally, add a sleep to allow the server to start up
sleep 10

exit 0
