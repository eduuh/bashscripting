#!/bin/bash
# This script displays various information to the screen.

# Display 'Hello'
echo 'Hello'

# Assign a value to a variable.
WORD='script'

# Display that value using the variable

echo "$WORD"

# Demostrate that single quotes cause varaible not to be expanded.

echo '$WORD'

# combine the vraiable with hard-code text
echo "This is a shell $WORD"


# Display the contents of the varaibles using an alternative syntax
echo "This is a shell ${WORD}"

# Appending text to the variables.
echo "${WORD}ing is fun!"

# Show how Not to append text to a variable.
# This doen't work:
echo "$WORDing is fun!"

# Create a new variable. 
ENDING='ed'

# Combine the two variables

echo "This is ${WORD}${ENDING}"


# Change the value stored in the Ending variable. (Reassagnment.)

Ending='ing'

echo "${WORD}${Ending} is fun"

# Reassignt value to Ending.
ENDING='s'
echo "You are going to write many scripts in this class!"


