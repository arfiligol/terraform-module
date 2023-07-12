provider "google" {
    project = var.project_id
    region = "asia-east1"
}

resource "google_compute_instance" "first_instance" {
    name            = "my-first-vm"
    machine_type    = "n1-standard-1"
    zone            = "asia-east1-a"
    
    boot_disk {
        initialize_params {
            image   = "ubuntu-os-cloud/ubuntu-2304-amd64"
            size    = "20"
        }
    }

    network_interface {
        network = "default"

        access_config {
            // Ephermeral IP
        }
    }

    service_account {
        scopes = ["https://www.googleapis.com/auth/cloud-platform"]
    }

    metadata = {
        enable-oslogin = "True"
    }

    labels = {
        environment = "dev"
    }
}