#!/bin/bash
# Using numeric test evaluations

value1=10
value2=11
value=5.55234

#test if the value of the variable is greater than 5
if [ $value1 -gt 5 ]
then 
  echo "The test value $value1 is greater that 5"
fi
# test if two variables are equal.
if [ $value1 -eq $value2 ]
then 
  echo "The values are equal"
else 
  echo "Thee values $value1 and $value2  are different"
fi

# floating point test.
if [ $value -gt 5 ]
then
  echo "The test value $value1 is greater than 5"
fi



