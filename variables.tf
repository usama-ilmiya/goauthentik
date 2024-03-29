variable "project_id" {
  description = "GCP Project ID"
  type        = string
  # Specify the default project ID here
  default     = "gmzdev"
}

variable "region" {
  description = "GCP region"
  type        = string
  # Specify the default region here
  default     = "us-east1"
}

variable "zone" {
  description = "GCP zone"
  type        = string
  # Specify the zone here. Choose from available zones in your desired region.
  default     = "us-east1-c"  # Example zone
}


variable "instance_name" {
  description = "Name of the VM instance"
  type        = string
  # Specify the default instance name here
  default     = "authentik-vm"
}



variable "machine_type" {
  description = "Type of machine for the VM instance"
  type        = string
  # Specify the machine type here. Choose from available machine types in the specified zone.
  default     = "n1-standard-2"  # Example machine type
}

variable "image" {
  description = "Operating system image for the VM instance"
  type        = string
  # Specify the default image here
  default     = "debian-cloud/debian-10"
}
