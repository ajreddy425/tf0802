# variable "dyn_demo_ingress" {
#   type = list(any)
#   default = [
#     {
#       description = "allow 80"
#       port        = 80
#       protocol    = "tcp"
#       cidr_blocks = ["0.0.0.0/0"]

#     },
#     {
#       description = "allow 22"
#       port        = 22
#       protocol    = "tcp"
#       cidr_blocks = ["0.0.0.0/0"]

#     },
#     {
#       description = "allow 1234"
#       port        = 1234
#       protocol    = "tcp"
#       cidr_blocks = ["192.168.0.0/16"]

#     },
#     {
#       description = "allow 23"
#       port        = 23
#       protocol    = "tcp"
#       cidr_blocks = ["192.168.0.0/16"]
#     }


#   ]

# }

# # # # security groups for ec2 instance
# resource "aws_security_group" "my-sg" {
#   name        = "my-sg"
#   description = "Allow TLS inbound traffic"
#   vpc_id      = aws_vpc.main.id

#   dynamic "ingress" {
#     for_each = var.dyn_demo_ingress
#     content {
#       description = ingress.value.description
#       from_port   = ingress.value.port
#       to_port     = ingress.value.port
#       protocol    = ingress.value.protocol
#       cidr_blocks = ingress.value.cidr_blocks

#     }
#   }


#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   tags = {
#     Name = "mysg-all"
#   }
# }

# resource "aws_instance" "pub1_dynamic" {
#   ami                         = "ami-0cff7528ff583bf9a" # us-east-1
#   instance_type               = "t2.micro"
#   associate_public_ip_address = true
#   subnet_id                   = aws_subnet.subnet1.id //us-east-1d
#   vpc_security_group_ids      = [aws_security_group.my-sg.id]
#   count                       = 1
#   tags = {
#     Name = "dynamic-server-${count.index + 1}-${local.ws}"
#   }
# }