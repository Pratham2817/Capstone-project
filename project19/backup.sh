#!/bin/bash
BUCKET=project19-logs-backup-13259
LOG=/home/clouduser/backup.log
/snap/bin/aws s3 sync /home/clouduser/logs s3://$BUCKET/logs/ >> $LOG 2>&1
echo "Backup done $(date)" >> $LOG
