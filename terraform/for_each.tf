resource "google_compute_subnetwork" "foreach_subnet" {
  for_each = {
    web = "10.30.0.0/24"
    api = "10.30.1.0/24"
  }

  name          = "grayscale-${each.key}-subnet"
  ip_cidr_range = each.value
  region        = var.region
  network       = google_compute_network.grayscale_vpc.id
}