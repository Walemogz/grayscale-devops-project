resource "google_compute_subnetwork" "count_subnet" {
  count         = 2
  name          = "grayscale-count-subnet-${count.index}"
  ip_cidr_range = "10.20.${count.index}.0/24"
  region        = var.region
  network       = google_compute_network.grayscale_vpc.id
}