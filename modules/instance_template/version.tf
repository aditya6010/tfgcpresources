terraform {
  required_version = ">=0.13.0"
  required_providers {
    google = ">= 3.43, <4.0"
  }
  provider_meta "google" {
    module_name = "blueprints/terraform/terraform-google-vm:instance_template/v7.1.0"
  }
}