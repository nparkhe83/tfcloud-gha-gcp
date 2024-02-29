resource "google_compute_instance" "web" {
  name         = "apache-1"
  machine_type = "f1-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
    }
  }

  network_interface {
    network = "default"
  }

  metadata_startup_script = <<-EOF
                              #!/bin/bash
                              apt-get update
                              apt-get install -y apache2
                              sed -i -e 's/80/8080/' /etc/apache2/ports.conf
                              echo "Hello World" > /var/www/html/index.html
                              systemctl restart apache2
                              EOF
}

resource "google_compute_instance" "web1" {
  name         = "apache-1"
  machine_type = "f1-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
    }
  }

  network_interface {
    network = "default"
  }

  metadata_startup_script = <<-EOF
                              #!/bin/bash
                              apt-get update
                              apt-get install -y apache2
                              sed -i -e 's/80/8080/' /etc/apache2/ports.conf
                              echo "Hello World" > /var/www/html/index.html
                              systemctl restart apache2
                              EOF
}
