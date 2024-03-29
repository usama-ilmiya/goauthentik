provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_compute_instance" "vm_instance" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = "default"
    access_config {
      // Ephemeral IP
    }
  }

  metadata_startup_script = file("startup.sh")
}


# resource "google_compute_firewall" "firewall" {
#   name    = "allow-http-https"
#   network = "default"
#   allow {
#     protocol = "tcp"
#     ports    = ["80", "443"]
#   }
#   source_ranges = ["0.0.0.0/0"]
# }
