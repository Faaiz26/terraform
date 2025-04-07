terraform {
  backend "gcs" {
    bucket  = "terraform-state-2698"
    prefix  = "terraform-state-2698/remote_background/terraform.tfstate"
  }
}
