provider "google"{
    credentials = file("~/terraform-key.json")
    project = "terraform-455614"
    region  = "us-central1"
    zone    = "us-central1-c"
}

resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"
  machine_type = "e2-micro"


    boot_disk{
        initialize_params{
            image="debian-cloud/debian-11"
        }
    }

    network_interface{
        network = "default"
        access_config{

        }
    }
}

resource "google_storage_bucket" "resource_backend_bucket" {
    name = "terraform-state-2698"
    location = "us-east1"
  
}

