variable "region" {
default = "us-east-1"
}
variable "instance_type" {
default = "t3.micro"
}
variable "instance_key" {
default = "TESLA_PUB_WEB"
}
variable "vpc_cidr" {
default = "178.0.0.0/16"
}
variable "public_subnet_cidr" {
default = "178.0.1.0/24"
}

variable "public_subnet_cidr2" {
default = "178.0.2.0/24"
}

variable "private_subnet_cidr" {
default = "178.0.3.0/24"
}

variable "private_subnet_cidr2" {
default = "178.0.4.0/24"
}