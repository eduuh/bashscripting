#!/bin/bash

# This script generates a list of random passwords.
# A random number as a password.

PASSWORD="${RANDOM}"
echo "${PASSWORD}"
## Three random number together
PASSWORD="${RANDOM}${RANDOM}${RANDOM}"
echo "${PASSWORD}"
# Use the current date/time as the basis for the password
PASSWORD=$(date +%s)
echo "${PASSWORD}"
# use the current date and tim toggethre with nanoseconds.
PASSWORD=$(date +%s%N)
echo "${PASSWORD}"
# A better password.
PASSWORD=$(date +%s%N | sha256sum | head -c32)
echo "${PASSWORD}"
# An even better password
PASSWORD=$(date +%s%N | sha256sum | head -c48)
echo "${PASSWORD}"
# APPEND a special Character to the password.
SPECIAL_CHARACTER=$(echo "!@#$%^&*()+=" | fold -w1 | shuf | head -c1)
echo "${PASSWORD}${SPECIAL_CHARACTER}"
