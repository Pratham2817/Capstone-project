# Project 17: Log Forwarding to CloudWatch

## Goal
Central log management.

## Steps
1. Installed the Amazon CloudWatch Agent on the Ubuntu VM.
2. Wrote `config.json` to collect `/var/log/project17-app.log` and `/var/log/syslog`.
3. Configured AWS credentials and region for the agent.
4. Started the agent (`amazon-cloudwatch-agent-ctl -a fetch-config -m onPrem`).
5. Generated test log lines and verified them in CloudWatch Log group `pratham-project17-app`.
6. Cleaned up the agent and log groups afterwards.

## Screenshots
- `screenshots/01-agent-installed.png`
- `screenshots/02-agent-running.png`
- `screenshots/03-cloudwatch-logs.png`
