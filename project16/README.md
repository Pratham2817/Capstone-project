# Project 16: Enable HTTPS using ACM

## Goal
Secure web access.

## Steps
1. Created a self-signed certificate with OpenSSL and imported it into AWS Certificate Manager.
2. Created security groups: the ALB allows only port 443; the EC2 allows port 80 only from the ALB.
3. Launched an EC2 instance running nginx.
4. Created an Application Load Balancer, a target group, and an HTTPS (443) listener using the ACM certificate.
5. No HTTP (80) listener exists, so HTTP is blocked.
6. Verified: `curl -k https://<alb>` returns the page; `curl http://<alb>` times out.
7. Cleaned up all resources afterwards.

Note: the certificate is self-signed (no domain available), so browsers show a warning.

## Screenshots
- `screenshots/01-acm-cert.png`
- `screenshots/02-listener.png`
- `screenshots/03-curl-http-blocked.png`
- `screenshots/04-https-browser.png`
