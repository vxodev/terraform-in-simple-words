provider "digitalocean" {
  token = "${var.api_token}"
}

resource "digitalocean_droplet" "vxodev" {
  image  = "centos-7-x64"
  name   = "my-droplet"
  region = "ams3"
  size   = "s-1vcpu-1gb"
}

variable "api_token" {
  description = "DigitalOcean Read/Write API token"
}
