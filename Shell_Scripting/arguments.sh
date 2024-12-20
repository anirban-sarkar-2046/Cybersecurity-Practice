#! /bin/bash

echo $1 $2 $3  ' > echo $1 $2 $3'

args=("$@")

#echo ${args[0]} ${args[1]} ${args[2]}

echo $@ #printing all arguments
echo $# #printing number of arguments
