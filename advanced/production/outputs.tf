output "ip" {
  value = "${digitalocean_droplet.example.ipv4_address}"
}

output "status" {
  value = "${digitalocean_droplet.example.status}"
}