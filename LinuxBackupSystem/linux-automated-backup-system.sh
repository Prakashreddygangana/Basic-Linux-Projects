#! /bin/bash

# ==============================================================================
#                     LINUX AUTOMATED BACKUP SYSTEM
# ==============================================================================

SOURCE_DIR="/home/Projects"
BACKUP_DIR="/home/Projects/LinuxBackups"
DATE=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="backup_$DATE.tar.gz"

echo "======================================================================="
echo "                    LINUX AUTOMATED BACKUP                             "
echo "======================================================================="

# Check source directory
if [ ! -d "$SOURCE_DIR" ]; then
    echo "ERROR: Source directory does not exist!"
     exit 1
fi

# Create backup directory
mkdir -p "$BACKUP_DIR"

echo " "
echo "Source      : $SOURCE_DIR"
echo "Destination : $BACKUP_DIR"
echo " "


# Create backup
tar -czf "$BACKUP_DIR/$BACKUP_FILE" -C "$SOURCE_DIR" .

# Check backup status
if [ $? -eq 0 ]; then
  echo "Backup completed successfully!"
  echo "Backup file : $BACKUP_FILE"
else
  echo "Backup failed!"
  exit 1
fi

# Delete backups older than 7 days
find "$BACKUP_DIR" -type f -name "*.tar.gz" -mtime +7 -delete

echo " "
echo "Old backups (>7 days) removed."
echo " "
echo "Available backups:"
ls -lh "$BACKUP_DIR"

echo " "
echo "===================================================================="
echo "                     BACKUP COMPLETED                               "
echo "===================================================================="
