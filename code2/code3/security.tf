resource "aws_security_group" "sg" {
  name        = "var.sg_name"
  description = "allow traffic on 22 and 80"
  vpc_id      = module.vpc.vpc_id

  ingress {
    description      = "22 for ssh"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
   
  }
   ingress {
    description      = "80 for http"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
   
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    
  }

  tags = {
    Name = "webserver-sg"
    Team = "Devops"
    owner = "serge"
  }
}

# Generate a secure key using a rsa algorithm
resource "tls_private_key" "ec2_key" {
  algorithm = "RSA"
  rsa_bits  = 2048
}