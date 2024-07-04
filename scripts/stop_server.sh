#!/bin/bash

# Get the process ID of the Java application
PID=$(ps -ef | grep my-java-app.jar | grep -v grep | awk '{print $2}')

# Stop the Java application
if [ -n "$PID" ]; then
  echo "Stopping Java application..."
  kill $PID
  echo "Java application stopped."
else
  echo "Java application is not running."
fi