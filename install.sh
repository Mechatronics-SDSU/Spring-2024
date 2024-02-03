#!/bin/bash

INSTALL_DIR="$HOME/ROBOT_LIBRARY"

mkdir -p "$INSTALL_DIR"
# Define the source directory and the destination directory
robo_dir=$INSTALL_DIR
# Use the find command to locate all Python files in the source directory and its subdirectories
find . -type f -name "*.py" -exec cp {} "$robo_dir" \;
find . -type f -name "*.sh" -exec cp {} "$robo_dir" \;
find . -type f -name "*.json" -exec cp {} "$robo_dir" \;

sudo chmod +x $INSTALL_DIR/*
echo "Copied all python/bash/json files to $robo_dir and gave permission.   
This simply installs the set of python, Bash and JSON file to the robo_dir directory 
The find command is used to locate all these files on the directory and sub directory and copies 
them to the robo_dir"
