#! /bin/bash

# alert message that prints when the isn't validate
MESSAGE="the password should contain uppercase, lowercase and numbers and 10 characters long"

# check if -f flag exist, if exist its mean the password in file
if [[ $1 -eq "-f" ]];
then
# if password in file the password assign into PASS variable using cat command
        PASS=`cat $2`
else
# if password not in file the password assing from $1 argument into PASS variable
        PASS=$1
fi

# PASS variable contain the password, the pasgit branchsword that need to check.
# if the password doesnt meet one of the requirements the will get appropriate message.

# this if condition check if password contain numbers using regex.
if ! [[ $PASS =~ [0-9] ]];
then
        echo -e "\033[0;31mmissing numbers $MESSAGE"
        exit 1

# this elif checks if password contain lowercase letters using regex.
elif ! [[ $PASS =~ [a-z] ]];

then
        echo -e "\033[0;31mmissing lowercase letter $MESSAGE"
        exit 1

# this elif check if password contain uppercase letters using regex.
elif ! [[ $PASS =~ [A-Z] ]];

then
        echo -e "\033[0;31mmissing uppercase letter $MESSAGE"
        exit 1

# this elif check if password length short than 10 digits.
elif [ ${#PASS} -lt 10 ];
then
        echo -e "\033[0;31mpassword too short $MESSAGE"
        exit 1
# print message if the password is okay.
else
        echo -e "\033[0;32mpassword is validate"
        exit 0
fi