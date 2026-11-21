# Project 17: Log Forwarding to CloudWatch

## Goal
Central log management.

## Steps
1. Installed the Amazon CloudWatch Agent on the Ubuntu VM.
2. Wrote `config.json` to collect `/var/log/project17-app.log` and `/var/log/syslog`.
3. Configured AWS credentials and region for the agent.
4. Started the agent: `amazon-cloudwatch-agent-ctl -a fetch-config -m onPrem`.
5. Generated test log lines and verified them in the CloudWatch log group `pratham-project17-app` (stream `AZLTT0222435e27`, 10 events).
6. Console view was blocked by IAM (`logs:DescribeLogGroups`), so the logs were verified with the AWS CLI.
7. Stopped the agent and deleted the log groups afterwards.

## Files
- `config.json`: CloudWatch agent configuration


