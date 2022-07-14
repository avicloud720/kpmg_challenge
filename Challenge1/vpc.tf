# VPC Provisioning

resource "aws_vpc" "virtualnet" {
  cidr_block       = "${var.vpc_cidr}"
  instance_tenancy = "default"
tags = {
  Name = "Virtual Network"
}
}