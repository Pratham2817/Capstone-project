# Project 20: Load Balanced App Deployment

## Goal
Improve scale and performance.

## Steps
1. Created security groups: `alb-sg-pratham` (HTTP 80 from anywhere) and `web-sg-pratham` (HTTP 80 from the ALB only).
2. Launched 2 EC2 instances (Amazon Linux 2023) in different subnets, with user data that installs Apache and serves the hostname.
3. Created target group `web-tg-pratham` with an HTTP health check on `/` (interval 10 s, healthy threshold 2) and registered both instances.
4. Created the internet-facing Application Load Balancer `web-alb-pratham` with an HTTP:80 listener forwarding to the target group.
5. Verified that both targets are healthy and that repeated requests alternate between the two servers.

## Screenshots
- `screenshots/01-target-health.png`
- `screenshots/02-browser.png`
