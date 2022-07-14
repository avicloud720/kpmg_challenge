# 1st front-end subnet 
resource "aws_subnet" "public-subnet-1" {
  vpc_id                 = "${aws_vpc.virtualnet.id}"
  cidr_block             = "${var.subnet1_cidr}"
  map_public_ip_on_launch = true
  availability_zone = "us-east-1a"
tags = {
  Name = "Front Subnet 1"
}
}

# 2nd front-end subnet 
resource "aws_subnet" "public-subnet-2" {
  vpc_id                  = "${aws_vpc.virtualnet.id}"
  cidr_block              = "${var.subnet2_cidr}"
  map_public_ip_on_launch = true
  availability_zone = "us-east-1b"
tags = {
  Name = "Front Subnet 2"
}
}

# 1st back-end subnet 
resource "aws_subnet" "application-subnet-1" {
  vpc_id                  = "${aws_vpc.virtualnet.id}"
  cidr_block             = "${var.subnet3_cidr}"
  map_public_ip_on_launch = false
  availability_zone = "us-east-1a"
tags = {
  Name = "Back Subnet 1"
}
}

# 2nd back-end subnet 
resource "aws_subnet" "application-subnet-2" {
  vpc_id                  = "${aws_vpc.virtualnet.id}"
  cidr_block             = "${var.subnet4_cidr}"
  map_public_ip_on_launch = false
  availability_zone = "us-east-1b"
tags = {
  Name = "Back Subnet 2"
}
}

# 1st DB Private Subnet
resource "aws_subnet" "database-subnet-1" {
  vpc_id            = "${aws_vpc.virtualnet.id}"
  cidr_block        = "${var.subnet5_cidr}"
  availability_zone = "us-east-1a"
tags = {
  Name = "DB Subnet 1"
}
}

# 2nd DB Private Subnet
resource "aws_subnet" "database-subnet-2" {
  vpc_id            = "${aws_vpc.virtualnet.id}"
  cidr_block        = "${var.subnet6_cidr}"
  availability_zone = "us-east-1b"
tags = {
  Name = "DB Subnet 2"
}
}