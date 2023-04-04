resource "aws_security_group" "sg1" {
  vpc_id = aws_vpc.vpc.id
  name =  "vpc_sg"
  description = "sg for vpc"
  egress {
    from_port = "0"
    to_port = "0"
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port = "22"
    to_port = "22"
    protocol = "tcp"
    cidr_blocks = [var.myip]
  }
   ingress {
    from_port = "80"
    to_port = "80"
    protocol = "tcp"
    cidr_blocks = [var.myip]
  }

  tags = {
    Name =  "only ssh"
  }
}