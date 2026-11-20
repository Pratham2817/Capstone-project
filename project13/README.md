# Project 13: Build Image and Push to ECR

## Goal
Publish an app to a container registry (AWS ECR).

## Tasks
- Build a Docker image
- Push it to ECR

## Environment
| Item | Value |
|---|---|
| Registry | AWS ECR (private) |
| Region | ap-south-1 |
| Repository | my-app |
| Tag | latest |

## Steps
1. Create the app (`app.py`) and `Dockerfile`.
2. Build: `docker build -t my-app .`
3. Test locally: `docker run -d -p 8080:8080 --name my-app-test my-app`, then `curl http://localhost:8080`
4. Create the repo: `aws ecr create-repository --repository-name my-app --region ap-south-1`
5. Log in: `aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin <ACCOUNT_ID>.dkr.ecr.ap-south-1.amazonaws.com`
6. Tag: `docker tag my-app:latest <ACCOUNT_ID>.dkr.ecr.ap-south-1.amazonaws.com/my-app:latest`
7. Push: `docker push <ACCOUNT_ID>.dkr.ecr.ap-south-1.amazonaws.com/my-app:latest`
8. Verify: `aws ecr describe-images --repository-name my-app --region ap-south-1`

## Screenshot
![ECR image](screenshots/01-ecr-image.png)

## Deliverables
- [x] Docker image built
- [x] Image pushed to ECR
- [x] ECR screenshot
