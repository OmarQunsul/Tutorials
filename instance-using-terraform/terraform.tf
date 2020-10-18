variable "do_token" {}
variable "ssh_key_path" {}

terraform {
  required_providers {
    digitalocean = {
      source = "terraform-providers/digitalocean"
    }
  }
  required_version = ">= 0.13"
}

# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = var.do_token
}
