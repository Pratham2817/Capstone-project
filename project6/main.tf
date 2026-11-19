terraform {
  required_providers {
    local = { source = "hashicorp/local" }
  }
}

resource "local_file" "example" {
  filename = "${path.module}/hello.txt"
  content  = "Version 1 - Terraform tracked with Git"
}
