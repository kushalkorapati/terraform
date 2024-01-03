resource "aws_instance" "web" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ aws_security_group.roboshop_all.id ]

  tags = {
    Name = "HelloTerraform"
  }
}

resource "aws_security_group" "roboshop_all" {#this is terraform name for terraform reference only

  name        = "roboshop-all-aws" #this is for aws
  description = "Allow TLS inbound traffic"
  #vpc_id      = aws_vpc.main.id

  ingress {
    description      = "Allow All Ports"
    from_port        = 0
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }

 egress {
     from_port        = 0
     to_port          = 0
     protocol         = "-1"
     cidr_blocks      = ["0.0.0.0/0"]
        #ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
     Name = "allow_tls"
  }

}