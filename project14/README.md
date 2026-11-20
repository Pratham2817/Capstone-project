cd ~/Capstone-project/project14
mkdir -p screenshots

cat > README.md << 'EOF'
# Project 14: App Deployment using EKS

## Goal
Deploy the container image from ECR (Project 13) to an Amazon EKS cluster and make it publicly accessible.

## Steps
1. Created the EKS cluster `pratham-project14` in `ap-south-1` with `eksctl create cluster -f cluster.yaml` (2 x t3.small nodes, default VPC because the VPC quota was reached).
2. Deployed `my-app` (2 replicas) from `590507089733.dkr.ecr.ap-south-1.amazonaws.com/my-app:latest` with `kubectl apply -f deployment.yaml`.
3. Exposed it with a LoadBalancer Service (port 80 to 8080) with `kubectl apply -f service.yaml`.
4. Opened the ELB URL in a browser and got `Hello from ECR!`.
5. Deleted the cluster afterwards with `eksctl delete cluster -f cluster.yaml` to stop billing.

## Screenshots
- `screenshots/01-nodes.png`: 2 nodes Ready
- `screenshots/02-service.png`: service with EXTERNAL-IP
- `screenshots/03-browser.png`: "Hello from ECR!" in the browser
EOF
