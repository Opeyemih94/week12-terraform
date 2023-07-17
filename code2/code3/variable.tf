variable "region" {
    description = "this is the region"
    default = "us-east-1"
  
}
#Vpc variable
variable "vpc_name"{
    default = "my-vpc"
  
}
variable "cblock" {
    default = "10.0.0.0/16"
  
}
#  security group vars

variable "sg_name" {
    default = "web-sg-dev"
}
#key pair vars

variable "kp_name" {
    default ="ope_keypair"
}