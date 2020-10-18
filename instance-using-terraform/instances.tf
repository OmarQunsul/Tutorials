resource "digitalocean_droplet" "my-server" {
  image  = "ubuntu-20-04-x64"
  name   = "my-server"
  region = "fra1"
  size   = "1gb"

  private_networking = true
  monitoring         = true

  ssh_keys = [digitalocean_ssh_key.my-ssh-key.fingerprint]
}

output "blank_ip" {
  value = digitalocean_droplet.my-server.ipv4_address
}
