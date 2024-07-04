#!/bin/bash

# Make install_dependencies.sh executable
chmod +x install_dependencies.sh

# Update buildspec.yml to execute install_dependencies.sh
cat <<EOF > buildspec.yml
version: 0.2

phases:
  install:
    runtime-versions:
      java: openjdk11
    commands:
      - ./install_dependencies.sh
  build:
    commands:
      - javac src/Main.java
artifacts:
  files:
    - '**/*'
EOF

echo "Setup completed."
