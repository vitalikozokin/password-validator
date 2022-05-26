#! /bin/bash

# alert message that prints when the isn't validate
MESSAGE="the password should contain uppercase, lowercase and numbers and 10 characters long"

# $1 is the argument that recived from the user, this is the password that need to check.
# if the password doesnt meet one of the requirements the will get appropriate message.

# this if condition check if password contain numbers using regex.
if ! [[ $1 =~ [0-9] ]];
then
        echo -e "\033[0;31mmissing numbers $MESSAGE"
        exit 1

# this elif checks if password contain lowercase letters using regex.
elif ! [[ $1 =~ [a-z] ]];

then
        echo -e "\033[0;31mmissing lowercase letter $MESSAGE"
        exit 1

# this elif check if password contain uppercase letters using regex.
elif ! [[ $1 =~ [A-Z] ]];

then
        echo -e "\033[0;31mmissing uppercase letter $MESSAGE"
        exit 1

# this elif check if password length short than 10 digits.
elif [ ${#1} -lt 10 ];
then
        echo -e "\033[0;31mpassword too short $MESSAGE"
        exit 1
# print message if the password is okay.
else
        echo -e "\033[0;32mpassword is validate"
        exit 0
fi