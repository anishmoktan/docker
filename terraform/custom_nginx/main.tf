terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_image" "nginx_image" {
  name = "nginx"
  build {
    context    = "."
    dockerfile = "Dockerfile"
  }
}

resource "docker_container" "nginx_container" {
  name  = "nginx-container"
  image = docker_image.nginx_image.image_id

  ports {
    internal = 80
    external = 8080
  }
}
