# Project 6: Version Control Infrastructure

## Goal
Track Terraform updates using Git.

## Tasks
- Push Terraform code to GitHub
- Raise a Pull Request for changes

## Tools Used
- Terraform (local provider)
- Git and GitHub

## Project Structure
```
project6/
├── main.tf        # Terraform configuration
├── .gitignore     # Ignores .terraform/ and state files
└── README.md
```

## Steps Performed
1. Created the `project6` folder and wrote `main.tf`, which creates `hello.txt` with the content "Version 1".
2. Ran `terraform init` and `terraform apply -auto-approve`.
3. Committed and pushed the code to the `main` branch on GitHub.
4. Created a new branch: `git checkout -b update-terraform`.
5. Changed the file content from "Version 1" to "Version 2" in `main.tf`.
6. Committed and pushed the branch: `git push -u origin update-terraform`.
7. Raised a Pull Request from `update-terraform` into `main` on GitHub.

## Key Commands
```
terraform init
terraform apply -auto-approve
git checkout -b update-terraform
git add project6
git commit -m "Update Terraform content to Version 2"
git push -u origin update-terraform
```



## Outcome
Terraform changes are version-controlled with Git, and updates are reviewed through a Pull Request.
