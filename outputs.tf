output "web-address" {
  value = "${google_compute_instance.web.public_dns}:8080"
}
