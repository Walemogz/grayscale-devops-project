terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_storage_bucket" "grayscale_bucket" {
  name                        = var.bucket_name
  location                    = "EU"
  uniform_bucket_level_access = true
  storage_class               = "NEARLINE"
}

resource "google_compute_network" "grayscale_vpc" {
  name                    = "${local.common_name}-vpc"
  auto_create_subnetworks = false
}


resource "google_compute_subnetwork" "grayscale_subnet" {
  name          = "${local.common_name}-subnet"
  ip_cidr_range = "10.10.0.0/24"
  region        = var.region
  network       = google_compute_network.grayscale_vpc.id
}

module "network" {
  source = "./modules/network"

  network_name = "grayscale-module-vpc"
  subnet_name  = "grayscale-module-subnet"
  subnet_cidr  = "10.40.0.0/24"
  region       = "europe-west2"
}