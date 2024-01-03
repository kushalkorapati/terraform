variable "ami_id" {
    type = string
    default = "ami-03265a0778a880afb"
  
}

variable "instance_name" {
    type = list 
    default = ["mongodb", "rabbitmq", "mysql", "shipping", "catalouge", "user", "redis", "web", "payments", "cart", "dispatch"]
  
}

variable "instance_type" {
    type = string
    default = "t2.micro"
  
}

variable "zone_id" {
  default = "Z055404811ZZASIYTON77" 
}

variable "domine_name" {
    default = "korapati.online"
}

# variable "sg-name" {
#     type = string
#     default = "robodhshop-all-aws"
# }

# variable "sg-description" {
#     type = string
#     default = "Allow TLS inbound traffic"
  
# }
# variable "inbound-from-port" {
#     #type = number
#     default = 0
# }
# variable "cidr_blocks" {
#     type = list
#     default = ["0.0.0.0/0"]
# }

# variable "sg-name" {
#     type = string
#     default = "roboshop-all"
  
# }

# variable "cidr_blocks" {
#     type = list
#   default = ["0.0.0.0/0"]
# }

# variable "inbound-from-port" {
#    default = 0
#    type = number
# }

# variable "sg-description" {
#   default = "allow all"
#   type = string
# }

