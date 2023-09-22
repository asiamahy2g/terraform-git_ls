
output "lightsail_instance_ip" {
  value = aws_lightsail_instance.light_sail_1.public_ip_address
}
