# Project 18: GitOps Infra Deployment

## Goal
Trigger infra updates from PR merges.

## Flow
PR -> merge to main -> `plan` job -> manual approval (`production` environment) -> `apply` job.

## Files
- `main.tf`: Terraform (local provider)
- `.github/workflows/terraform-apply.yml`: plan and apply workflow

## Screenshots
- `screenshots/01-waiting-approval.png`
- `screenshots/02-run-success.png`
- `screenshots/03-environment.png`
