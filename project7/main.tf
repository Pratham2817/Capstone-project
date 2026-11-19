terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

resource "local_file" "example" {
  filename = "${path.module}/hello.txt"
  content  = "CI validation for Terraform"
}
