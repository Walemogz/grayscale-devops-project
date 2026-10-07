output "vpc_id" {
  description = "ID of the VPC created by the network module"
  value       = google_compute_network.vpc.id
}