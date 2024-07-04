#!/bin/bash
# Script to stop a Java application

# Set the path to your JAR file and application name
JAR_FILE="/opt/myapp/my-java-app-1.0-SNAPSHOT.jar"
APP_NAME="my-java-app-1.0-SNAPSHOT"

# Check if the Java process is running
PID=$(pgrep -f "$JAR_FILE")

if [ -z "$PID" ]; then
    echo "No running Java process found for $APP_NAME"
else
    echo "Stopping Java process with PID $PID for $APP_NAME"
    kill $PID
    
    # Wait for the process to stop (adjust the sleep duration as needed)
    sleep 5
    
    # Check if the process is still running
    if ps -p $PID > /dev/null; then
        echo "Java process with PID $PID could not be stopped"
        exit 1
    else
        echo "Java process with PID $PID stopped successfully"
    fi
fi
