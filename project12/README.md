# Project 12: Infrastructure CI Trigger (Terraform Plan)

## Goal
Validate infrastructure changes automatically: run `terraform plan` on every push.

## Tasks
- Run `terraform plan` in the pipeline
- Upload the plan as an artifact

## Files
| File | Purpose |
|---|---|
| `project12/main.tf` | Terraform config (local provider, no cloud credentials needed) |
| `.github/workflows/terraform-plan.yml` | GitHub Actions pipeline |

## Pipeline steps
1. Checkout the code
2. Set up Terraform
3. `terraform init`
4. `terraform validate`
5. `terraform plan -out=tfplan`
6. `terraform show` to produce a readable `plan.txt`
7. Upload `tfplan` and `plan.txt` as the `terraform-plan` artifact

## Trigger
- On push to any branch that changes `project12/**` or the workflow file
- On pull requests to `main` that change `project12/**`

## Result
Successful run: https://github.com/Pratham2817/Capstone-project/actions/runs/44712951753

## Screenshots
| Description | File |
|---|---|
| Job success | ![job](screenshots/01-job-success.png) |
| Plan artifact | ![artifact](screenshots/02-artifact.png) |

## Deliverables
- [x] Terraform plan in pipeline
- [x] Plan artifact uploaded
- [x] Job success screenshot