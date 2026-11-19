# Project 7: CI Validation for Terraform

![Terraform CI](https://github.com/Pratham2817/Capstone-project/actions/workflows/terraform-ci.yml/badge.svg)

## Goal
Automate IaC checks.

## Tasks
- Run `terraform fmt` and `terraform validate` on every push
- Add a workflow badge

## Workflow
`.github/workflows/terraform-ci.yml` runs on push and pull request. It checks out the code, installs Terraform, then runs `terraform fmt -check`, `terraform init -backend=false` and `terraform validate`.

## Deliverable
Pipeline screenshot: see `screenshots/project7-pipeline.png`
