# Project 24 - Manual Chaos Test (nginx)

## Summary
Stopped the nginx service manually, confirmed the outage, restarted it and verified recovery.

## Timeline (UTC, 2026-11-20)
- 18:21:55 BASELINE: nginx active, HTTP 200
- 18:22:31 FAILURE INJECTED: `systemctl stop nginx`
- 18:22:31 CHECK: inactive, HTTP 000 (connection refused)
- 18:23:00 RESTART: `systemctl start nginx`
- 18:23:00 RECOVERY: active, HTTP 200, "Hello from Project 24"

## Impact
Web service was unavailable for about 29 seconds.

## Root cause
Intentional: service stopped manually (chaos test).

## Detection
`systemctl is-active nginx` returned inactive, and curl returned HTTP 000.

## Resolution
`sudo systemctl start nginx`, then re-checked status and HTTP response.

## Lessons learned
- Add monitoring and alerting on HTTP health checks.
- Use `Restart=on-failure` in systemd so nginx auto-recovers.
- Keep a log of timestamps during incidents.
