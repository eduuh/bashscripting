#!/bin/bash
# Tis script demostrates I/O redirection.
# Standard input
# Standrad output  -> Displayed to the screen
# Standard Error  -> Displayed to the screen

# Redirec STDOUT to a file.

FILE="/tmp/data"
head -n1 /etc/passwd > ${FILE}

## Redirect the STDIN to a program

read LINE < ${FILE}
echo "Line contains ${LINE}"

# Redirects STDOUT to a file overwritting the file.
echo
echo "Contents of ${FILE}"
cat ${FILE}

# Redirect STDOUT to a file, appending to the file
echo "${RANDOM} ${RANDOM}" >> ${FILE}
echo "${RANDOM} ${RANDOM}" >> ${FILE}
echo
echo "Contents of ${FILE}"
cat ${FILE}

# File Descriptors
# FD 0 - STDIN
# FD 1 - STDOUT
# FD 2 - STDERR

# Redirect STDIN to a program , using FD 0
read LINE 0< ${FILE}
echo
echo "LINE contains: ${LINE}"

# Redirects STDOUT to a file using FD 1, overwritting the file.
head -n3 /etc/passwd 1> ${FILE}
echo
echo "Contents of ${FILE}"
cat ${FILE}

# Redirect STDERR t a file using FD 2.e
ERR_FILE="/tmp/data.err"
head -n3 /etc/passwd /fakefile 2> ${ERR_FILE}

# Redirect STDOUT and STERR to a file.
head -n3 /etc/passwd /fakefile $> ${FILE}
echo 
echo "Contents of ${File}"

# redirect STDOUT and STDERR through a pipe.

echo 
head -n3 /etc/passwd /fakefile |& cat -n

# Send output to STDERR
echo "This is STDERR!" >&2

# Discard STDOUT
echo
echo "Discarding STDOUT:"
head -n3 /etc/passwd /fakefile > /dev/null

# Discard STDERR
echo
echo "Discarding STDERR:"
head -n3 /etc/passwd /fakefile 2> /dev/null

# Discard STDOUT and STDERR
head -n3 /etc/passwd /fakefile &> /dev/null

# Clean up
rm ${File} ${ERR_FILE} &> /dev/null







