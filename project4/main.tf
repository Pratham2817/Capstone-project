provider "aws" {
  region = var.aws_region
}

resource "aws_iam_user" "user" {
  name = var.iam_user_name

  tags = {
    Project = "Project4"
  }
}

resource "aws_iam_user_policy_attachment" "s3_read" {
  user       = aws_iam_user.user.name
  policy_arn = var.policy_arn
}
