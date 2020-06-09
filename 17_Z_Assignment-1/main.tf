provider "docker" {
  host = "tcp://localhost:2375"
}
resource "docker_container" "mysql_container" {
  image = docker_image.mysql_image.latest
  name = var.container_name
  volumes {
    volume_name = docker_volume.mysql_data_volume.name
    container_path = "/var/lib/mysql"
  }
  networks_advanced {
    name = var.mysql_network_name
  }
  env = ["MYSQL_ROOT_PASSWORD=P4sSw0rd0!"]
}