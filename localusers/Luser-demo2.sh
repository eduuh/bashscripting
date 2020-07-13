#!/bin/bash
# Display the Uid and username of the user executing  the script.
# Display if the user is the eduuh user or not.


# Display the UID>
echo "Your UID is ${UID}"

# Only Display if the Uid does Not matche 1000
UID_TO_TEST_FOR='1002'

if [[ "${UID}" -ne "${UID_TO_TEST_FOR}" ]]
then
 echo "Your Uid does not match ${UID_TO_TEST_FOR}"
 exit 1
fi


# Display the username
user_name=$(id -un)
# Test if the command succeded.
if [[ "${?}" -ne 0 ]]
then 
  echo "The id command did not execute sucesfully"
  exit 1
fi

echo "Your username is ${user_name}"

# You can use a string test conditional.

user_name_to_test_for='eduuh'
if [[ "${user_name}" = "${user_name_to_test_for}" ]]
then 
  echo "Your username matches "${user_name_to_test_for}" "
fi
# Test for !=(not equal) for the string.

if [[ "${user_name}" != "${user_name_to_test_for}" ]]
then
  echo "Your username does not match ${user_name_to_test_for}"
  exit 1
fi

exit 0
