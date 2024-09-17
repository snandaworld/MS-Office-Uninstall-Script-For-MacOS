#!/bin/bash

# Prompt the user for a number
echo "Please enter a number:"
read user_number
sleep 6
# Check if the number is greater than 10
if [ "$user_number" -gt 10 ]; then
    echo "The number you entered is greater than 10."
else
    echo "The number you entered is 10 or less."
fi
