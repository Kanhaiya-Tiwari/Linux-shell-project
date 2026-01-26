#!/bin/bash

if [ "$EUID" -ne 0 ]; then
  echo "Run this script as root"
  exit 1
fi

echo "1. Add User"
echo "2. Delete User"
echo "3. Modify User"
echo "4. Create Group"
echo "5. Backup Directory"
echo "6. Exit"

read -p "Choose an option: " choice
add_user() {
  read -p "Enter username: " username
  if [ -z "$username" ]; then
    echo "Error: Username cannot be empty"
    return 1
  fi
  if useradd -m "$username"; then
    echo "User $username created"
  else
    echo "Error: Failed to create user $username"
  fi
}
delete_user() {
  read -p "Enter username: " username
  if [ -z "$username" ]; then
    echo "Error: Username cannot be empty"
    return 1
  fi
  if userdel -r "$username" 2>/dev/null; then
    echo "User $username deleted"
  else
    echo "Error: Failed to delete user $username"
  fi
}
modify_user() {
  read -p "Username: " username
  read -p "Group name: " group
  if [ -z "$username" ] || [ -z "$group" ]; then
    echo "Error: Username and group cannot be empty"
    return 1
  fi
  if usermod -aG "$group" "$username" 2>/dev/null; then
    echo "User added to group"
  else
    echo "Error: Failed to add user to group"
  fi
}
create_group() {
  read -p "Enter group name: " group
  if [ -z "$group" ]; then
    echo "Error: Group name cannot be empty"
    return 1
  fi
  if groupadd "$group" 2>/dev/null; then
    echo "Group created"
  else
    echo "Error: Failed to create group"
  fi
}
backup_dir() {
  read -p "Enter directory to backup: " dir
  read -p "Enter backup location: " backup_loc

  if [ -z "$dir" ] || [ -z "$backup_loc" ]; then
    echo "Error: Directory and backup location cannot be empty"
    return 1
  fi
  
  if [ ! -d "$dir" ]; then
    echo "Error: Directory $dir does not exist"
    return 1
  fi
  
  if [ ! -d "$backup_loc" ]; then
    echo "Error: Backup location $backup_loc does not exist"
    return 1
  fi

  if tar -czf "$backup_loc/backup_$(date +%F).tar.gz" "$dir"; then
    echo "Backup completed"
  else
    echo "Error: Failed to create backup"
  fi
}
case $choice in
  1) add_user ;;
  2) delete_user ;;
  3) modify_user ;;
  4) create_group ;;
  5) backup_dir ;;
  6) echo "Exiting..."; exit 0 ;;
  *) echo "Invalid option" ;;
esac
