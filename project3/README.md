# Project 3 - EC2 State Monitoring with CloudWatch Alarm

## Goal

Monitor EC2 CPU utilization using Amazon CloudWatch and generate alerts when CPU usage exceeds a defined threshold.

## Resources Created

- EC2 Instance
- Security Group
- CloudWatch Alarm

## Alarm Configuration

- Alarm Name: HighCPUAlarm
- Metric: CPUUtilization
- Namespace: AWS/EC2
- Statistic: Average
- Evaluation Periods: 1
- Period: 60 Seconds
- Threshold: 1%
- Comparison Operator: GreaterThanThreshold

## Files

- main.tf
- variables.tf
- outputs.tf
- userdata.sh

## Deployment Commands

```bash
terraform init
terraform validate
terraform plan
terraform apply
```

## Terraform Outputs

```bash
terraform output
```

Outputs:

- instance_id
- alarm_name

## Verification

1. Open AWS CloudWatch Console.
2. Navigate to Alarms.
3. Verify that HighCPUAlarm is created.
4. Generate CPU activity on the EC2 instance.
5. Confirm the alarm changes from OK to ALARM.

## Screenshots

Included screenshots:

- cloudwatch-alarm.png
- ec2-instance-running.png

## Outcome

Successfully deployed an EC2 instance and configured a CloudWatch alarm to monitor CPU utilization using Terraform.
