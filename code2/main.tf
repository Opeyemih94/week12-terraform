resource "aws_vpc" "vpc-demo" {
  #cidr_block = var.cblock
  tags = {
    Name = "my-vpc"
  }
}

