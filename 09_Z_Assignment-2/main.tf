variable "image_name" {
  default = "ghost:latest"
}
variable "container_name" {
  default = "ghost_blog"
}
variable "ext_port" {
  default = 80
}

provider "docker" {
  host = "tcp://localhost:2375/"
}
resource "docker_image" "ghost_image" {
  name = var.image_name
}

resource "docker_container" "ghost_container" {
  image = var.image_name
  name  = var.container_name
  ports {
    internal = 2368
    external = var.ext_port
  }
}