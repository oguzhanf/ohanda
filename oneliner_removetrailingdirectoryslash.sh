#!/bin/bash
# reads in each line on $1 as it is passed to the script. You can also turn this into a one liner
# by changing $1 with a file path that contains the directory listings. 
#
# cut -c2- starts printing each line from the second column onwards which in this case removes
# the first slash or whatever it is you want to get rid of from the beginning of each line. 
# this then gets fed to a new file at the end of the line. oooooo i love you bash so masssshhhhhh I love you with all my heart


while read dir; do echo $dir; done < $1 | cut -c2- > outdirwithoutslashatbeginningoffile.txt
