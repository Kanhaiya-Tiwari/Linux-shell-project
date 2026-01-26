#!/bin/bash

read -p "Enter username: " username

echo "you entered $username"
echo "User being created by: kanha"

sudo useradd -m "$username" 2>/dev/null || echo "User already exists or creation failed"

echo "New User added"
