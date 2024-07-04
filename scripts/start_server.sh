#!/bin/bash
# Example: Start Java application

APP_HOME=/opt/myapp  # Replace with your application's home directory
JAR_FILE=/path/to/your/application.jar  # Replace with the actual path to your application JAR file
MAIN_CLASS=com.example.Main  # Replace with your main class

# Change directory to the application's home directory
cd $APP_HOME || exit

# Start the Java application
java -cp $JAR_FILE $MAIN_CLASS > /var/log/myapp.log 2>&1 &
