<<<<<<< HEAD
# bash-user-processor
This project contains a simple Bash script that processes user data from a text source. Each user record includes a name, email, and ID. The script checks the validity of each email address and determines whether the ID number is even or odd.
=======
# Bash User Processor Script

This project contains a simple Bash script that processes user data from a text source. Each user record includes a name, email, and ID. The script checks the validity of each email address and determines whether the ID number is even or odd.

## 🧾 Task Description

The script performs the following:

- Reads a list of users from a built-in text block.
- For each user:
  - Checks if the user ID is valid and determines if it is even or odd.
  - Verifies if the email address is a valid fully qualified domain name (FQDN).
- If valid, it prints a message like:  
  `The 325 of john_j123@domain.com is odd number.`
- Skips invalid entries and shows warnings only for bad parameters.

## 🚀 Why I Built This

I created this script as part of a practical task during my **DevOps course**. The exercise was focused on practicing shell scripting, working with CSV-style data, and implementing logic to validate user inputs — which are essential skills for automating system administration and data processing tasks in DevOps.

## 🛠 Technologies Used

- Bash
- Linux CLI tools (`read`, `xargs`, `IFS`, regex)

## 📂 How to Run

```bash
chmod +x process_users.sh
./process_users.sh

>>>>>>> 8490072 (Initial commit: Add bash script to process users)
