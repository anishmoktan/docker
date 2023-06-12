# terraform {
#   required_providers {
#     docker = {
#       source  = "kreuzwerker/docker"
#       version = "3.0.2"
#     }
#   }
# }

# provider "docker" {
#   host = "unix:///var/run/docker.sock"
# }

# resource "docker_stack" "my_stack" {
#   name    = "my-stack"
#   compose = file("docker-compose.yml")
# }

terraform {
  required_providers {
    docker = {
      source = "hashicorp/docker"
    }
  }
}


provider "docker" {
  source = "hashicorp/docker"
}

resource "docker_compose" "nginx_stack" {
  file = "docker-compose.yml"
  #   services = [
  #     {
  #       name = "nginx"
  #       image = "nginx:latest"
  #       ports {
  #         internal = 80
  #         external = 8080
  #       }
  #     },
  #     {
  #       name = "redis"
  #       image = "redis:latest"
  #     }
  #   ]
}
