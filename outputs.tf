output "public-ip-address" {
    value = google_compute_instance.eg_instance.network_interface
  
}