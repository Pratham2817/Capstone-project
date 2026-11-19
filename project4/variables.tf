variable "aws_region" {
  default = "eu-north-1"
}

variable "iam_user_name" {
  default = "pratham-s3-read-user"
}

variable "policy_arn" {
  default = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
}
