provider "aws" {
  region = var.aws_region
}

data "aws_vpc" "main" {
  id = "vpc-0956bd4896225a585"
}

data "aws_subnet" "public" {
  id = "subnet-0dd16ffb7b5cf3b46"
}

resource "aws_security_group" "ec2_sg" {
  name        = "project3-sg"
  description = "Security Group for EC2 Monitoring"
  vpc_id      = data.aws_vpc.main.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

data "aws_ami" "amazon_linux" {
  most_recent = true

  owners = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*"]
  }
}

resource "aws_instance" "monitoring_server" {
  ami                         = data.aws_ami.amazon_linux.id
  instance_type               = "t3.micro"
  subnet_id                   = data.aws_subnet.public.id
  associate_public_ip_address = true

  vpc_security_group_ids = [
    aws_security_group.ec2_sg.id
  ]

  user_data = file("userdata.sh")

  tags = {
    Name = "project3-monitoring-server"
  }
}

resource "aws_cloudwatch_metric_alarm" "cpu_alarm" {
  alarm_name          = "HighCPUAlarm"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 1

  metric_name = "CPUUtilization"
  namespace   = "AWS/EC2"

  period    = 60
  statistic = "Average"

  threshold = 20

  alarm_description = "Alarm when CPU exceeds 20%"

  dimensions = {
    InstanceId = aws_instance.monitoring_server.id
  }
}
