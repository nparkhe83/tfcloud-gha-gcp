resource "google_compute_firewall" "allow_web" {
  name          = "allow-web"
  direction     = "INGRESS"
  priority      = 1000
  network       = default
  source_ranges = ["0.0.0.0/0"]

  allow {
    protocol = "tcp"
    ports    = ["8080"]
  }
}
