# Creating Internet Gateway 
resource "aws_internet_gateway" "internetgateway" {
  vpc_id = "${aws_vpc.virtualnet.id}"
}