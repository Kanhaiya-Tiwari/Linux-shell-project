# Shell Scripting for DevOps - Kanha's Learning Journey

Welcome to my comprehensive Shell Scripting repository for DevOps! This repository contains practical shell scripts organized by learning progression.

---

## 📁 Repository Structure

### Day 01 - Introduction
**File:** `day01/hello.sh`
- Basic introduction script
- Demonstrates comments and echo statements
- Shows conversation between TWS (the instructor) and learners

**Output:** Prints DevOps greetings and encouraging messages

---

### Day 02 - Loops and Functions

#### 1. For Loop (`day02/for_loop.sh`)
- **Purpose:** Creates multiple directories using for loop
- **Syntax:** `bash for_loop.sh [prefix] [start] [end]`
- **Example:** `bash for_loop.sh test_ 1 3` creates test_1, test_2, test_3
- **Created by:** kanha

#### 2. While Loop (`day02/while_loop.sh`)
- **Purpose:** Prints even numbers from 0 to 10 using while loop
- **Output:** Demonstrates loop iteration and number incrementing

#### 3. Check Loyalty Function (`day02/check_if_jetha_loyal.sh`)
- **Purpose:** Function that checks loyalty based on user input
- **Features:** 
  - Takes a person's name as parameter
  - Checks if they mention specific person or loyalty percentage
  - Uses conditional if-elif-else statements
- **Modified by:** kanha (changed function call from "tom" to "kanha")

#### 4. Jetha Lal Ki Duniya (`day02/jetha_lal_ki_duniya.sh`)
- **Purpose:** Interactive script demonstrating user input and file operations
- **Features:**
  - Takes user input with read command
  - Displays current date and name variables
  - Shows file character count

#### 5. Create User (`day02/create_user.sh`)
- **Purpose:** Creates a new user on the system
- **Features:**
  - Takes username as input
  - Uses `useradd -m` to create user with home directory
  - Error handling for existing users
- **Created by:** kanha
- **Note:** Requires root/sudo privileges

---

### Day 03 - Error Handling

#### 1. Error Handling (`day03/error_handle.sh`)
- **Purpose:** Demonstrates error handling and script interruption
- **Features:** Shows how to handle command failures gracefully
- **Output:** Prints message when code is interrupted

#### 2. Deploy Django App (`day03/deploy_django_app.sh`)
- **Purpose:** Automated Django app deployment with error handling
- **Features:**
  - Clones Django repository
  - Installs dependencies (Docker, Nginx, Docker-compose)
  - Handles errors at each step with proper error messages
- **Note:** Works on Linux systems with sudo access

#### 3. Create EC2 (`day03/create_ec2.sh`)
- **Purpose:** AWS EC2 instance creation automation
- **Features:**
  - Checks for AWS CLI installation
  - Installs AWS CLI if needed
  - Creates and manages EC2 instances
  - Waits for instances to reach running state

---

### Day 04 - AWS Automation

#### Create EC2 (`day04/create_ec2.sh`)
- **Purpose:** Enhanced EC2 instance creation script
- **Features:** Similar to day03 but with additional improvements
- **Requirements:** AWS CLI v2, AWS credentials configured

---

## 🔧 User Management Utilities

### User Backup Script (`user_backup.sh`)
A comprehensive system administration tool with multiple features:

**Features:**
1. **Add User** - Create new system users with home directories
2. **Delete User** - Remove users and their home directories
3. **Modify User** - Add users to groups
4. **Create Group** - Create new user groups
5. **Backup Directory** - Create compressed backups with timestamps

**Requirements:** Root/sudo privileges

**Improvements Made:**
- Input validation for all fields
- Error handling with proper status checks
- Directory existence validation for backups
- Safe command execution with error suppression
- User-friendly error messages

**Usage:**
```bash
sudo ./user_backup.sh
```

---

## 🚀 Quick Start

### Prerequisites
- macOS or Linux system
- bash shell
- For some scripts: sudo access, AWS CLI, Git

### Running Scripts

```bash
# Make scripts executable
chmod +x *.sh
chmod +x day01/*.sh
chmod +x day02/*.sh
chmod +x day03/*.sh
chmod +x day04/*.sh

# Run individual scripts
bash day01/hello.sh
bash day02/for_loop.sh test_ 1 5
bash day02/while_loop.sh
bash day02/check_if_jetha_loyal.sh
bash day02/jetha_lal_ki_duniya.sh
bash day03/error_handle.sh

# Run user backup (requires sudo)
sudo ./user_backup.sh
```

---

## 📊 Learning Progress

| Day | Topics | Status |
|-----|--------|--------|
| Day 01 | Introduction, Echo, Comments | ✅ Complete |
| Day 02 | For Loop, While Loop, Functions | ✅ Complete |
| Day 03 | Error Handling, Deployment Scripts | ✅ Complete |
| Day 04 | AWS Automation | ✅ Complete |

---

## 🛠️ Key Learnings

### Bash Fundamentals
- ✅ Variables and quoting
- ✅ Control structures (if/else, for, while)
- ✅ Functions and function calls
- ✅ Command substitution
- ✅ Error handling and exit codes

### System Administration
- ✅ User and group management
- ✅ File operations and permissions
- ✅ Directory backup and compression
- ✅ System commands and utilities

### DevOps Skills
- ✅ Error handling and logging
- ✅ AWS CLI integration
- ✅ Docker and deployment automation
- ✅ System monitoring and configuration

---

## 📝 Notes

- All scripts contain proper error handling and input validation
- Variable names are quoted to handle spaces and special characters safely
- Scripts follow bash best practices and conventions
- Personalized with contributor name: **kanha**

---

## 🔐 Security Considerations

- Scripts requiring root access should be reviewed carefully
- Always validate user inputs before using in commands
- Consider using `shellcheck` for script linting
- Test scripts in safe environments first

---

## 📞 Author

**Name:** Kanha  
**Purpose:** DevOps Shell Scripting Learning Repository  
**Date:** January 2026

---

## 📚 Resources

- [Bash Manual](https://www.gnu.org/software/bash/manual/)
- [ShellCheck - Shell Script Analysis Tool](https://www.shellcheck.net/)
- [AWS CLI Documentation](https://docs.aws.amazon.com/cli/)
- [DevOps Best Practices](https://www.devops.com/)

---

**Happy Scripting! 🚀**
