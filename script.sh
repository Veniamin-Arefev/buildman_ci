#!/bin/bash

# Get the name from the first argument
NAME="$1"

# Check if name is empty
if [ -z "$NAME" ]; then
  echo "Error: name input is empty" >&2
  exit 1
fi

# Create and print greeting
GREETING="Hello, $NAME!"
echo "$GREETING"

# Set output for GitHub Actions
echo "greeting=$GREETING" >> "$GITHUB_OUTPUT"