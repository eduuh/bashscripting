#!/bin/bash
# testing string equality
testuser=eduuh
#check user
if [ $USER = $testuser ]
then 
  echo "Welcome $testuser"
fi
if [ $USER != $testuser ]
then 
  echo "This is not $testuser"
else 
  echo "Welcome $testuser"
