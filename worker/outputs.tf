output "ip_addresses" {
  value = aws_network_interface.worker.*.private_ips
}

