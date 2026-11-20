provider "aws" {
  region = var.aws_region
}

# Existing VPC
data "aws_vpc" "main" {
  id = "vpc-0956bd4896225a585"
}

# Existing subnet with internet access
data "aws_subnet" "public" {
  id = "subnet-0dd16ffb7b5cf3b46"
}

# Security Group
resource "aws_security_group" "web_sg" {
  name        = "project1-web-sg"
  description = "Allow HTTP traffic"
  vpc_id      = data.aws_vpc.main.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "project1-sg"
  }
}

# Latest Amazon Linux 2023 AMI
data "aws_ami" "amazon_linux" {
  most_recent = true

  owners = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*"]
  }
}

# EC2 Instance
resource "aws_instance" "web" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t3.micro"

  subnet_id = data.aws_subnet.public.id

  associate_public_ip_address = true

  vpc_security_group_ids = [
    aws_security_group.web_sg.id
  ]

  user_data = file("userdata.sh")

  tags = {
    Name = "project1-webserver"
  }
}

