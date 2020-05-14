#!/bin/bash
ConfigFile="/home/drew/etc/backup.conf"
source $ConfigFile
RcloneConfig="/home/drew/.config/rclone/rclone.conf"

BackupDate=`date +%F_%T`
YesterdaysDate=`date -d "now-1days" "+%Y-%m-%d"`

SourceDirectory="/home/drew"
DestinationDirectory="utbox:backup/t420/home/"
BackupDirectory="utbox:backup/t420/$BackupDate"
ExcludeFrom="/home/drew/etc/backup.exclude"
LogPath="/home/drew/var/backup.log"
ErrPath="/home/drew/var/backup.err"

echo "I have been successfully called on $(date)" >> $LogPath
rclone -P sync --config=$RcloneConfig --exclude-from $ExcludeFrom -l $SourceDirectory $DestinationDirectory --backup-dir $BackupDirectory >>$LogPath 2>$ErrPath
