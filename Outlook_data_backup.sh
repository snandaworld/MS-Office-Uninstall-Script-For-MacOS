#!/bin/sh

USERNAME=$(ls -l /dev/console | awk '{print $3}')
echo "***********************************************************************************************"
echo "    Creating Backup folder"
mkdir -p ~/Documents/Outlook\ Backup
echo "    Backup started..."

echo "    Backing up UBF8T346G9.ms"
tar czvf ~/Documents/Outlook\ Backup/UBF8T346G9.ms_backup.tar.gz "/Users/$USERNAME/Library/Group Containers/UBF8T346G9.ms"

echo "    Backingup UBF8T346G9.Office"
tar czvf ~/Documents/Outlook\ Backup/UBF8T346G9.Office_backup.tar.gz "/Users/$USERNAME/Library/Group Containers/UBF8T346G9.Office"

echo "    Backup UBF8T346G9.OfficeOsfWebHost"
tar czvf ~/Documents/Outlook\ Backup/UBF8T346G9.OfficeOsfWebHost_backup.tar.gz "/Users/$USERNAME/Library/Group Containers/UBF8T346G9.OfficeOsfWebHost"

echo "    Backup Completed"
echo "***********************************************************************************************"

