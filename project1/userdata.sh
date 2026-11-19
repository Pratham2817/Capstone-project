#!/bin/bash

yum update -y
yum install httpd -y

systemctl enable httpd
systemctl start httpd

cat <<EOF > /var/www/html/index.html
<html>
<head>
    <title>Capstone Project</title>
</head>
<body>
    <h1>Project 1 - Linux Web Server Deployment</h1>
    <h2>Created by Pratham Sharma</h2>
    <p>Infrastructure provisioned using Terraform on AWS.</p>
</body>
</html>
EOF
