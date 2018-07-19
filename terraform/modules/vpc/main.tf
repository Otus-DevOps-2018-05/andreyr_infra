resource "google_compute_firewall" "firewall_web" {
  name    = "default-allow-web"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["80"]
  }

  source_ranges = "${var.source_ranges}"
}
