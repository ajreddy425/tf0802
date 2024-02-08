# resource "aws_vpc" "con_vpc" {
#   instance_tenancy = "default"
#   cidr_block       = "172.16.0.0/16"
#   count            = local.b == 6 ? 1 : 0
#   #   count = terraform.workspace == "stage" ? 1:0
#   tags = {
#     Name = "con-vpc"
#   }
# }

