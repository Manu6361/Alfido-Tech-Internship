terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "~> 3.0"
    }
  }
}

provider "null" {}

resource "null_resource" "docker_container" {
  # This command runs when you create the infrastructure
  provisioner "local-exec" {
    command = "docker run -d -p 8081:80 --name alfido_task3_terraform nginx:latest"
  }

  # This command runs when you destroy the infrastructure (cleanup)
  provisioner "local-exec" {
    when    = destroy
    command = "docker rm -f alfido_task3_terraform"
  }
}