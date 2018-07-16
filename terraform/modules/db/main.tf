resource "google_compute_instance" "db" {
  name         = "reddit-db-tf-${count.index}"
  machine_type = "g1-small"
  zone         = "${var.zone}"
  tags         = ["reddit-db"]
  count        = "${var.instance_count}"

  # определение загрузочного диска
  boot_disk {
    initialize_params {
      image = "${var.db_disk_image}"
    }
  }

  # определение сетевого интерфейса
  network_interface {
    # сеть, к которой присоединить данный интерфейс
    network = "${var.network}"

    # использовать ephemeral IP для доступа из Интернет
    access_config = {}
  }

  metadata {
    ssh-keys = "appuser:${file(var.public_key_path)}"
  }
}

resource "google_compute_firewall" "firewall_mongo" {
  name    = "allow-mongo-default"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["27017"]
  }

  # правило применимо к инстансам с тегом  ...
  target_tags = ["reddit-db"]

  # порт будет доступен только для инстансов с тегом  ...
  source_tags = ["reddit-app"]
}
