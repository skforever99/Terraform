# generating key pair

resource "aws_key_pair" "my-key" {
  key_name   = "terraform-ec2-key"
  public_key = file("ec2-key.pub")
}

# using default vpc

resource "aws_default_vpc" "default" {
  tags = {
    Name = "Default VPC"
  }
}

# security groups

resource "aws_security_group" "sg-1" {
  name        = "security-group-1"
  description = " this is created by terraform"
  vpc_id      = aws_default_vpc.default.id #interpolation = fetching values from other block
  tags = {
    name = " terraform-sg "
  }
  # inbound rules
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "ssh open"
  }
  # egress rules
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "internet access allowed"
  }

}

resource "aws_instance" "sunil-ec2" {
  key_name        = aws_key_pair.my-key.key_name
  security_groups = [aws_security_group.sg-1.name]
  ami             = "ami-0152204c1a187337c"
  instance_type   = "t3.micro"

  tags = {
    Name = "terraform-ec2"
  }
}

#use this command to connect- ssh -i ec2-key ec2-user@ec2-24-905-781-125.compute-1.amazonaws.com