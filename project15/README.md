# Project 15: Automate Server Config with Ansible

## Goal
Remote configuration automation.

## Steps
1. Installed Ansible on the controller (Ubuntu VM).
2. Created `inventory.ini` with a `webservers` group.
3. Verified connectivity with `ansible -m ping`.
4. Ran `install-webserver.yaml` to install and start nginx and deploy an index page.
5. Verified with `curl http://localhost`, which returned "Hello from Ansible!".

## Files
- `inventory.ini`
- `install-webserver.yaml`

## Screenshots
- `screenshots/01-version.png`
- `screenshots/02-ping.png`
- `screenshots/03-playbook-run.png`
- `screenshots/04-curl.png`
