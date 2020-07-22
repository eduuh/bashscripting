#!/bin/bash

log() {
  local MESSAGE="${@}"
  if [[ "$[VERBOSE]" = 'true' ]]
  then 
     echo "${MESSAGE}"
  fi
}

readonly VERBOSE='true'
log 'hello!'
log 'This is Fun!'

