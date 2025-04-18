#!/bin/bash

# Path to your input file

INPUT_FILE="users.txt"

# Skip the header   IFS Internal Field Separator

tail -n +2 "$INPUT_FILE" | while IFS=',' read -r name email id; do
    # Trim whitespace

    name=$(echo "$name" | xargs)
    email=$(echo "$email" | xargs)
    id=$(echo "$id" | xargs)

    # Check if ID is numeric
    if [[ -n "$id" && "$id" =~ ^[0-9]+$ ]]; then
        # Check if email is FQDN (contains @ and domain with a dot)
        if [[ "$email" =~ ^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$ ]]; then
            if (( id % 2 == 0 )); then
                echo "The $id of $email is even number."
            else
                echo "The $id of $email is odd number."
            fi
        else
            echo "Warning: Invalid email address for user '$name'. Skipping..." >&2
        fi
    else
        echo "Warning: Invalid or missing ID for user '$name'. Skipping..." >&2
    fi
done

