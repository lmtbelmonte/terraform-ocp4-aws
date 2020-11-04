output "ip_addresses" {
  value = aws_network_interface.infra.*.private_ips
}

