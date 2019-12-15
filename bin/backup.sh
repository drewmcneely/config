#!/bin/bash
ConfigFile="$HOME/etc/backup.conf"
source $ConfigFile

BackupDate=`date +%F_%T`
YesterdaysDate=`date -d "now-1days" "+%Y-%m-%d"`

SourceDirectory=$HOME
DestinationDirectory="box:backup/t420/home/"
BackupDirectory="box:backup/t420/$BackupDate"
ExcludeFrom="$HOME/etc/backup.exclude"
LogPath="$HOME/var/backup.log"

rclone -P sync --exclude-from $ExcludeFrom -l $SourceDirectory $DestinationDirectory --backup-dir $BackupDirectory 2> $LogPath
