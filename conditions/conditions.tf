resource "aws_instance" "web" {
  ami           = "ami-03265a0778a880afb"
  instance_type = var.instance_name == "mongodb" ? "t3.small" : "t2.micro"
  #vpc_security_group_ids = [ aws_security_group.roboshop_all.id ]
}