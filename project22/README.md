# Project 22: S3 Log Archive with Lifecycle

## Goal
Lower cost for storage.

## Steps
1. Created an S3 bucket.
2. Uploaded sample logs to `s3://<bucket>/logs/`.
3. Added a lifecycle rule (`lifecycle.json`) that expires objects under `logs/` after 30 days and aborts incomplete multipart uploads after 7 days.
4. Verified the rule with `aws s3api get-bucket-lifecycle-configuration`.

## Screenshots
- `screenshots/01-lifecycle-rule.png`
