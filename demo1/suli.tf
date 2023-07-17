provider "aws" {
  region = "us-east-1"
}

resource "aws_lightsail_instance" "demo" {
  name              = "ope-server-ope"
  availability_zone = "us-east-1a"
  blueprint_id      = "ubuntu_20_04"
  bundle_id         = "nano_1_0"
  key_pair_name     = "mykey"
  tags = {
    name  = "utrains devops"
    env   = "dev"
    owner = "ope"
  }
}    clear
