#!/bin/bash

# Here, we'll be writing a script that will create a new user for us.

read -p "Enter username: " username

echo "You entered $username and it will be the name of the new user created"

sudo useradd -m $username


echo "New user added"
