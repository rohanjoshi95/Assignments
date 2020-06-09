module "cloud_user" {
  source = "../ghost"
  container_name = var.container_name
  ext_port = var.ext_port
  image_name = var.image_name
}