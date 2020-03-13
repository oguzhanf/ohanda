#!/bin/bash



while read dir; do echo $dir; done < $1 | cut -c2- > outdirwithoutslashatbeginningoffile.txt
