terraform {
  required_providers {
    local = { source = "hashicorp/local" }
  }
}

resource "local_file" "deployed" {
  content  = "Deployed by GitOps pipeline\n"
  filename = "${path.module}/deployed.txt"
}
