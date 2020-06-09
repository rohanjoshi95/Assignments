#Output the IP Address of the Container
output "ip_address" {
  description = "The IP for the container."
  value = module.cloud_user.ip_address
}

output "container_name" {
  description = "The name of the container."
  value = module.cloud_user.container_name
}