resource "google_compute_network" "existing_gke_vpc" {
  name = "default"
  description = "Default network for the project"
}