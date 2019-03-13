resource "digitalocean_droplet" "example" {
  image  = "centos-7-x64"
  name   = "my-droplet"
  region = "ams3"
  size   = "s-1vcpu-1gb"

  ssh_keys = "${var.ssh_keys_fingerprint}"
  tags     = ["${digitalocean_tag.vxodev.id}"]

  provisioner "remote-exec" {
    inline = [
      "yum -y install docker",
    ]
  }

  /*lifecycle = {
    create_before_destroy = true
    prevent_destroy = true
    ignore_changes = ["tags"]
  }*/
}