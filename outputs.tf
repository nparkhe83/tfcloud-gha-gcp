# output "web-address" {
#   value = "${google_compute_instance.web.network_interface[0].access_config[0].nat_ip}:8080"
# }

output "temp-address" {
  value = google_compute_instance.web
}
