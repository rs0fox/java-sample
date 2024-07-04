#!/bin/bash
# Example script to install Java (OpenJDK 12) and Maven

# Check if Java is already installed
if ! command -v java &>/dev/null; then
    echo "Installing OpenJDK 12..."
    yum install -y java-12-openjdk-devel
else
    echo "Java is already installed."
fi

# Check if Maven is already installed
if ! command -v mvn &>/dev/null; then
    echo "Installing Maven..."
    yum install -y maven
else
    echo "Maven is already installed."
fi
