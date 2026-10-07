output "bucket_url" {
  description = "The URL of the Grayscale Terraform bucket"
  value       = google_storage_bucket.grayscale_bucket.url
}
output "network_vpc_id" {
  description = "ID of the VPC created by the network module"
  value       = module.network.vpc_id
}