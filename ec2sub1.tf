# resource "aws_instance" "web1" {
#   ami                         = "ami-0277155c3f0ab2930"
#   instance_type               = "t2.micro"
#   associate_public_ip_address = true
#   key_name                    = "7ambatch"
#   count                       = 1
#   vpc_security_group_ids      = [aws_security_group.all_sg.id]
#   subnet_id                   = aws_subnet.subnet1.*.id[0]
#   user_data                   = file("./scripts/apache1.sh")

#   depends_on = [
#     aws_internet_gateway.gw
#     ]



#   tags = {
#     Name = "PubSubEC2-${local.ws}-${count.index + 1}"
#   }
# }

# // count.index[0]  - 1st ec2 instance
# // count.index[1]  - 2nd ec2 instance
# // count.index[2]  - 3rd ec2 instance
# // and so on
# // sg for ec2

# resource "aws_security_group" "all_sg" {
#   name        = "all_sg"
#   description = "all_sg"
#   vpc_id      = aws_vpc.main.id

#   tags = {
#     Name = "all_sg_730am"
#   }
# }

# resource "aws_vpc_security_group_ingress_rule" "inb_rule_ssh" {
#   security_group_id = aws_security_group.all_sg.id
#   cidr_ipv4         = "0.0.0.0/0"
#   from_port         = 22
#   description       = "ssh"
#   ip_protocol       = "tcp"
#   to_port           = 22
# }

# resource "aws_vpc_security_group_ingress_rule" "inb_rule_http" {
#   security_group_id = aws_security_group.all_sg.id
#   cidr_ipv4         = "0.0.0.0/0"
#   description       = "http"
#   from_port         = 80
#   ip_protocol       = "tcp"
#   to_port           = 80
# }

# # resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv6" {
# #   security_group_id = aws_security_group.allow_tls.id
# #   cidr_ipv6         = aws_vpc.main.ipv6_cidr_block
# #   from_port         = 443
# #   ip_protocol       = "tcp"
# #   to_port           = 443
# # }

# resource "aws_vpc_security_group_egress_rule" "out_rule" {
#   security_group_id = aws_security_group.all_sg.id
#   cidr_ipv4         = "0.0.0.0/0"
#   ip_protocol       = "-1" # semantically equivalent to all ports
# }

# # resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv6" {
# #   security_group_id = aws_security_group.allow_tls.id
# #   cidr_ipv6         = "::/0"
# #   ip_protocol       = "-1" # semantically equivalent to all ports
# # }