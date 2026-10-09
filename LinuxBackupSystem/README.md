# Linux Automated Backup System

## Project Overview
A Bash Shell Scripting project that automates Linux directory backups using compressed TAR archives. It creates timestamped backups and automatically removes backup files older than 7 days.

## Features
- Automated directory backups
- Timestamped backup filenames
- Source directory validation
- Automatic backup directory creation
- Backup success and failure verification
- Automatic deletion of backups older than 7 days
- Displays available backups with file sizes

## Technologies Used
- Linux
- Bash Shell Scripting
- TAR
- FIND
- MKDIR
- LS

## Project Structure
LinuxBackupSystem/
- linux-automated-backup-system.sh
- README.md

## Configuration
Source Directory: /home/Projects

Backup Directory: /home/Projects/LinuxBackups

You can modify these paths according to your system configuration.

## How to Run

1. Clone the repository:

git clone https://github.com/Prakashreddygangana/Basic-Linux-Projects.git

2. Navigate to the project directory:

cd Basic-Linux-Projects/LinuxBackupSystem

3. Give execute permission:

chmod +x linux-automated-backup-system.sh

4. Execute the script:

./linux-automated-backup-system.sh

## Backup Process
The script checks whether the source directory exists, creates the backup directory if necessary, generates a compressed TAR archive with a timestamp, verifies the backup status, removes backups older than 7 days, and lists the available backup files.

## Linux Concepts Practiced
- Bash scripting
- Variables and command substitution
- Conditional statements
- Exit status handling
- Directory and file management
- TAR archive compression
- FIND command
- Linux file permissions
- Basic error handling

## Project Objective
To gain practical experience in Linux administration and Bash scripting by developing a simple automated backup solution.

## Author
Prakash Reddy

Linux | Bash Scripting | Linux System Administration
