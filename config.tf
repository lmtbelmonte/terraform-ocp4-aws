variable "openshift_pull_secret" {
  type    = string
  default = "./openshift_pull_secret.json"
}

variable "openshift_installer_url" {
  type        = string
  description = <<EOF
The URL to download OpenShift installer.

default is "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/latest"
To install a specific version, use https://mirror.openshift.com/pub/openshift-v4/clients/ocp/<version>
EOF
  default     = "https://mirror.openshift.com/pub/openshift-v4/clients/ocp/latest"
}

variable "openshift_version" {
  type        = string
  description = "The openshift version to use. Leave blank and url to latest for the latest available"
  default     = ""
}

variable "aws_access_key_id" {
  type        = string
  description = "AWS access key"
}

variable "aws_secret_access_key" {
  type        = string
  description = "AWS Secret"
}

terraform {
  required_version = ">= 0.12"
}

variable "machine_cidr" {
  type = string

  description = <<EOF
The IP address space from which to assign machine IPs.
Default "10.0.0.0/16"
EOF
  default     = "10.0.0.0/16"
}

variable "base_domain" {
  type = string

  description = <<EOF
The base DNS domain of the cluster. It must NOT contain a trailing period. Some
DNS providers will automatically add this if necessary.

Example: `openshift.example.com`.

Note: This field MUST be set manually prior to creating the cluster.
This applies only to cloud platforms.
EOF

}

variable "clustername" {
  type        = string
  default     = "ocp4"
  description = <<EOF
The name of the cluster. It must NOT contain a trailing period. Some
DNS providers will automatically add this if necessary.

Note: This field MUST be set manually prior to creating the cluster.
EOF

}

// This variable is generated by OpenShift internally. Do not modify
variable "cluster_id" {
  default = "rand"
  type    = string

  description = <<EOF
(internal) The OpenShift cluster id.

This cluster id must be of max length 27 and must have only alphanumeric or hyphen characters.
EOF

}

variable "use_ipv4" {
  type        = bool
  default     = true
  description = <<EOF
Should the cluster be created with ipv4 networking. (default = true)
EOF

}

variable "use_ipv6" {
  type        = bool
  default     = false
  description = <<EOF
Should the cluster be created with ipv6 networking. (default = false)
EOF

}