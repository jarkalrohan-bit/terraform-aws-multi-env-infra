# Key pair

resource "aws_key_pair" "deployer" {

  key_name   = "${var.env}-infra-app-key"
  public_key = file("terra-key-pair.pub")

  tags = {
    Environment = var.env
  }
}


# Default VPC
resource "aws_default_vpc" "default" {

}

# Security group
resource "aws_security_group" "my_security_group" {

  name        = "${var.env}-infra-app-sg"
  description = "This will add a TF generated Security group"
  vpc_id      = aws_default_vpc.default.id

  # inbound rules
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "SSH open"
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "HTTP open"
  }

  # outbound rules
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "all access open outbound"
  }

  tags = {
    Name = "${var.env}-infra-app-sg"
  }

}


# ec2 instance
resource "aws_instance" "my_instance" {
  count = var.instance_count

  key_name        = aws_key_pair.deployer.key_name
  security_groups = [aws_security_group.my_security_group.name]
  instance_type   = var.instance_type
  ami             = var.ec2_ami_id # amazon linux

  root_block_device {
    volume_size = var.env == "prd" ? 10 : 8
    volume_type = "gp3"
  }
  tags = {
    Name = "${var.env}-infra-app-instance"
    Environment = var.env
  }

}