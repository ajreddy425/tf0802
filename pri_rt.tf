# resource "aws_route_table" "pri_route" {
#   vpc_id = aws_vpc.main.id

#   route {
#     cidr_block     = "0.0.0.0/0"
#     nat_gateway_id = aws_nat_gateway.ngw.id
#   }

#   # route {
#   #   ipv6_cidr_block        = "::/0"
#   #   egress_only_gateway_id = aws_egress_only_internet_gateway.example.id
#   # }

#   tags = {
#     Name = "Pri_route_table"
#   }
# }