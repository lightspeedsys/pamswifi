
resource "aws_default_vpc" "default"{
    // cidr_block = "10.0.0.0/16"
    // instance_tenancy = "dedicated"
    // name = "default"

    tags {
        Name = "default"
    }
}

//network.tf
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support = true
  tags {
    Name = "main"
  }
}

resource "aws_eip" "main" {
  instance = "${aws_instance.unifi.id}"
  vpc      = true
}