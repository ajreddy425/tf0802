# resource "aws_instance" "web2" {
#   ami                         = "ami-0277155c3f0ab2930"
#   instance_type               = "t2.micro"
#   associate_public_ip_address = true
#   key_name                    = "7ambatch"
#   vpc_security_group_ids      = [aws_security_group.all_sg.id]
#   subnet_id                   = aws_subnet.subnet2.id
#   user_data                   = file("./scripts/apache2.sh")


#   tags = {
#     Name = "webserver-02"
#   }
# }