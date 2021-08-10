provider "google" {

  credentials = file("computedemo-320604-5e4434dbe918.json")
  project     = "computedemo-320604"
  #project = var.project_id
  region  = var.region
  version = "~> 3.0"
}

resource "google_compute_address" "ip_address" {
  name = "external-ip"
}

locals {
  access_config = {
    nat_ip       = google_compute_address.ip_address.address
    network_tier = "PREMIUM"
  }
}

module "instance_template" {
  source          = "../modules/instance_template"
  project_id      = var.project_id
  subnetwork      = var.subnetwork
  service_account = var.service_account
  name_prefix     = "simple"
  tags            = var.tags
  labels          = var.labels
  access_config   = [local.access_config]
}
