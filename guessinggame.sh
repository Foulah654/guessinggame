#!/bin/bash

# Function to get the number of files in the current directory
function get_file_count {
    echo $(ls -1 | wc -l)
}

# Actual number of files
file_count=$(get_file_count)

echo "Welcome to the Guessing Game!"
echo "Try to guess the number of files in the current directory."

while true; do
    read -p "Enter your guess: " user_guess

    # Check if the guess is numeric
    if ! [[ $user_guess =~ ^[0-9]+$ ]]; then
        echo "Please enter a valid number."
        continue
    fi

    if (( user_guess < file_count )); then
        echo "Too low!"
    elif (( user_guess > file_count )); then
        echo "Too high!"
    else
        echo "Congratulations! You guessed it right!"
        break
    fi
done
