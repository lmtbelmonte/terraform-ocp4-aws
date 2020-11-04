output "master_ip_addresses" {
    value = module.masters.ip_addresses
}

output "worker_ip_addresses" {
    value = module.workers.ip_addresses
}

output "infra_ip_addresses" {
    value = module.infra.ip_addresses
}

output "kubeconfig" {
    value = module.installer.kubeconfig
}

output "kubeadmin-password" {
    value = module.installer.kubeadmin-password
}

output "private_ssh_key" {
    value = module.installer.private_ssh_key
}