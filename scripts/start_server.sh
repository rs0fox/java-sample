#!/bin/bash

# Set Java options
JAVA_OPTS="-Xmx512m -Dserver.port=8080"

# Start the Java application
java $JAVA_OPTS -jar your-app.jar > app.log 2>&1 &

echo "Java application started."
