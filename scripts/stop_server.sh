#!/bin/bash

# Find Java process ID
PID=$(pgrep -f "java -jar /tmp/my-java-app/my-java-app.jar")

if [ -z "$PID" ]; then
  echo "Java process not found."
  exit 0  # Exit successfully if process is not running
fi

# Attempt to stop the process
kill $PID

# Verify if the process was successfully stopped
if ps -p $PID > /dev/null; then
  echo "Failed to stop Java process."
  exit 1
else
  echo "Java process stopped successfully."
fi

exit 0
