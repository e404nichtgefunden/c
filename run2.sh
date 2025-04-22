#!/bin/bash

# Set the path to your Python script
PYTHON_SCRIPT="bash2.py"

while true; do
  # Run the Python script
  python3 "$PYTHON_SCRIPT"

  # Check the exit status of the script
  exit_code=$?

  # If the script exited with a non-zero status (error), restart it
  if [ $exit_code -ne 0 ]; then
    echo "Python script exited with code $exit_code. Restarting..."
    sleep 5 # Wait for 5 seconds before restarting (optional)
  else
    echo "Python script exited normally."
    break # Exit the loop if the script completes successfully
  fi
done
