#!/bin/bash

# This script creates an accout on the local system.
# You will be prompted for the account name and password.

# Ask for the user name.
read -p 'Enter the username to create: ' USER_NAME
# Ask for the real name.
read -p 'Enter the name of the person who this accoutn is for:' COMMENT
# Ask for the password.
read -p 'Enter the password of of the account:' PASSWORD

# Create the user. username are casesensitives
useradd -c "${COMMENT}" -m ${USER_NAME} 
# Set the password for the user.
echo ${PASSWORD} | passwd  --stdin ${USER_NAME}

# force password change on firt login.
passwd -e ${USER_NAME}
