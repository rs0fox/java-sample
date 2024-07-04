#!/bin/bash
# Example script to stop a Java application

# Identify the Java process running your application
PID=$(pgrep -f 'my-java-app-1.0-SNAPSHOT.jar')

if [ -z "$PID" ]; then
    echo "No running Java process found for my-java-app-1.0-SNAPSHOT.jar"
else
    echo "Stopping Java process with PID $PID"
    kill $PID
    
    # Wait for the process to stop
    sleep 5
    
    # Verify if the process is still running
    if ps -p $PID > /dev/null; then
        echo "Java process with PID $PID could not be stopped"
    else
        echo "Java process with PID $PID stopped successfully"
    fi
fi
