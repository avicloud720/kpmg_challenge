# Provider Config
variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "region" {
  default = "us-east-1"
}

# DB Credentials
variable "dbusername" {}
variable "dbpassword" {}

# VPC CIDR Block
variable "vpc_cidr" {
  default = "10.0.0.0/20"
}

# 1st Subnet CIDR Block
variable "subnet1_cidr" {
  default = "10.0.1.0/24"
}

# 2nd Subnet CIDR Block
variable "subnet2_cidr" {
  default = "10.0.2.0/24"
}

# 3rd Subnet CIDR Block
variable "subnet3_cidr" {
  default = "10.0.3.0/24"
}

# 4th Subnet CIDR Block
variable "subnet4_cidr" {
  default = "10.0.4.0/24"
}

# 5th Subnet CIDR Block
variable "subnet5_cidr" {
  default = "10.0.5.0/24"
}

# 6th Subnet CIDR Block
variable "subnet6_cidr" {
  default = "10.0.6.0/24" 
}
