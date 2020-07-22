#!/bin/bash

# Display the UID and Username of the user executing this script.
# display if the user is the root user or not.

# Display the UID
echo "Your UID is ${UID}"
# Display the username
USER_NAME=$(id -un)
echo "Your username is ${USER_NAME}"
# Display if the user if the root user or not rootuid = 0
if [["${UID}" -eq 0 ]]
  then
    echo "You are root."
  else 
    echo 'You are not root.'
fi
