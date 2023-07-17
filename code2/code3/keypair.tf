# creating the keypair in aws
resource "aws_key_pair" "ec2_key" {
  key_name   = "ope_keypair"                 
  public_key = tls_private_key.ec2_key.public_key_openssh 
}