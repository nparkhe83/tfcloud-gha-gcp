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

resource "google_compute_network" "vpc_network" {
  name                    = "default"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "jsd_subnetwork" {
  name          = "default_subnet"
  ip_cidr_range = "10.0.20.0/24"
  region        = "us-central1"
  network       = google_compute_network.vpc_network.id
}
