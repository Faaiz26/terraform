provider "google"{
    credentials = your path
    project = "terraform-455614"
    region = "us-central1"
    zone = "us-central1-c"
}

resource "google_compute_instance" "eg_instance" {
    name = var.name_value
    machine_type = var.machine_type_value

    boot_disk {
      initialize_params {
        image=var.image_variable_value
      }
    }

    network_interface {
      network = var.network_value
      access_config {
        
      }
    }
  
}
