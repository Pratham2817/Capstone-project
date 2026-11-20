# Project 23: IAM Role Based Access

## Goal
Secure resource usage.

## Steps
1. Created an S3 bucket with a test object.
2. Created IAM role `Project23-S3Role-Pratham` (EC2 trust policy) with a least-privilege inline policy: list and get on that bucket only (`s3-read-policy.json`), plus SSM managed instance access.
3. Created an instance profile and launched an EC2 with it attached. No access keys on the instance.
4. Ran CLI tests on the instance through SSM: S3 read of the bucket succeeds, other actions are denied.

## Screenshots
- `screenshots/01-cli-test.png`
- `screenshots/02-instance-role.png`
