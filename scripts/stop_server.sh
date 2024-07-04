#!/bin/bash
# Example: Stop Java application

# Replace with your application's main class name
MAIN_CLASS=com.example.Main

# Find the PID of the Java process
pid=$(ps aux | grep "$MAIN_CLASS" | grep -v grep | awk '{print $2}')

if [ -z "$pid" ]; then
  echo "No running Java process found for $MAIN_CLASS"
else
  echo "Stopping Java process $pid"
  kill -15 "$pid"  # Send SIGTERM to gracefully terminate the process

  # Wait for the process to terminate
  sleep 5

  # Verify if the process is still running
  if ps -p "$pid" > /dev/null; then
    echo "Java process $pid did not stop gracefully, force killing"
    kill -9 "$pid"  # Force kill if the process did not stop gracefully
  else
    echo "Java process $pid stopped gracefully"
  fi
fi
