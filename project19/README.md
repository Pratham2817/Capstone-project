# Project 19: Scheduled S3 Backup

## Goal
Automate backup routine.

## Steps
1. Installed and configured AWS CLI.
2. Created S3 bucket `project19-logs-backup-13259`.
3. Wrote `backup.sh` to sync `~/logs` to `s3://project19-logs-backup-13259/logs/`.
4. Added a cron job: `* * * * * /home/clouduser/backup.sh`.
5. Verified uploads in `backup.log` and listed the files with `aws s3 ls`.

## Files
- `backup.sh`

## Screenshots
- `screenshots/01-cron-and-backup.png`
- `screenshots/02-s3-bucket.png`
