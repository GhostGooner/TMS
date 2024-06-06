#!/bin/bash

for user in $(cat users.txt)
do
    echo "Creating new user: useradd $user"
done
