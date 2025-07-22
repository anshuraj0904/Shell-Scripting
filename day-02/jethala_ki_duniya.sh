#!/bin/bash


<< comment
Anything written
Here won't be executed
This is a multiline comment
comment


<<comment
# Variables in shell scripting:
# name="jetha"
# echo "name is $name and data is $(date)"


# Now, we'll let the use give the name.

echo "Enter your first name: "

read firstname
# This line above means that the name passed by the user will be passed inside the variable names "username"



# We can also put the promt in the read line using -p as follows.
read -p "Enter you last name: " lastname
# We can take multiple inputs in one line as, read -p "some prompt" input-1 input-2 ..... input-n


echo "User's fullname : $firstname $lastname"
comment


# Arguments in Shell, using $0, $1,....

echo "The characters in $0 are : $1 and $2" 
