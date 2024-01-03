#  resource "aws_security_group" "roboshop_all" {#this is terraform name for terraform reference only

#   name        = var.sg-name #this is for aws
#   description = var.sg-description
#   #vpc_id      = aws_vpc.main.id

#   ingress {
#     description      = "Allow All Ports"
#     from_port        = var.inbound-from-port
#     to_port          = 0
#     protocol         = "tcp"
#     cidr_blocks      = var.cidr_blocks
#     #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
#   }

#  egress {
#      from_port        = 0
#      to_port          = 0
#      protocol         = "-1"
#      cidr_blocks      =  var.cidr_blocks
#         #ipv6_cidr_blocks = ["::/0"]
#   }

#   tags = {
#      Name = "allow_tls"
#   }

# }