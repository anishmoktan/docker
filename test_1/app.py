#!/usr/bin/env python

import os

filename = "test123.txt"

# Get the current directory
current_directory = os.getcwd()

# Create the file path
file_path = os.path.join(current_directory, filename)

# Check if the file already exists
if os.path.exists(file_path):
    print(f"File '{filename}' already exists in the current directory.")
else:
    # Create an empty file
    with open(file_path, 'w') as file:
        pass  # The 'pass' statement allows us to create an empty block of code

    print(f"Empty file '{filename}' created successfully in the current directory.")

