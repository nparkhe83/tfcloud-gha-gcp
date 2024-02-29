output "address" {
  value     = google_compute_instance.web
  sensitive = true
}
