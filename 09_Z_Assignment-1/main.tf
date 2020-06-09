provider "docker" {
  host = "tcp://localhost:2375/"
}

resource "docker_image" "nginx" {
  name = "nginx:latest"
}