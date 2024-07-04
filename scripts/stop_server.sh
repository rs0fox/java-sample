#!/bin/bash

# Find the PID of the Java process
PID=$(ps aux | grep 'your-app.jar' | grep -v grep | awk '{print $2}')

if [ -z "$PID" ]; then
  echo "Java application is not running."
else
  # Gracefully terminate the Java process
  kill $PID

  echo "Java application stopped."
fi
