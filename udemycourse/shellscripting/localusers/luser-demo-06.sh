#!/bin/bash
# This script generates a random password for each user specified on the command line.
# Display what the user type on the command line

echo "You executed this command: ${0}"

# Display the path and filename of the script.
echo "You used $(dirname ${0}) as the path to the $(basename ${0}) script"

# Tell them howw many arguments they passed in.
#(Inside the script they are parameters, outside they are arguments)
NUMBER_OR_PARAMETER="${#}"
echo "You supplied ${NUMBER_OR_PARAMETER} arguments on the command line"

# Make sure they aat least supply one ARGUMENTS
if [[ "${NUMBER_OR_PARAMETER}" -lt 1 ]]
then 
  echo "Usage ${0} USER_NAME [USER_NAME]..."
  exit 1
fi

# Generate and display a password for each parameters.

for USER_NAME in "${@}"
do
  PASSWORD=$(date +%s%N | sha256sum | head -c48 )
  echo "${USER_NAME} ${PASSWORD}"
done

