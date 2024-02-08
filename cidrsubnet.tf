# resource "aws_subnet" "subnet1" {
#   vpc_id            = aws_vpc.main.id
#   cidr_block        = cidrsubnet(var.vpc_cidr, 8, count.index)
#   count             = local.b
#   availability_zone = local.a[count.index]


#   tags = {
#     Name     = "Public-subnet-${count.index + 1}"
#     Batch    = "batch-10"
#     Location = "us-east-1"
#   }
# }

// subnet ids



// count.index always starts from zero

# resource "aws_subnet" "subnet2" {
#   vpc_id            = aws_vpc.main.id
#   cidr_block        = cidrsubnet(var.vpc_cidr, 8, count.index + local.b)
#   count             = local.b
#   availability_zone = local.a[count.index]


#   tags = {
#     Name     = "Private-subnet-${count.index + 1}"
#     Batch    = "batch-10"
#     Location = "us-east-1"
#   }
# }

# output "pri_sub_ids" {
#   value = aws_subnet.subnet2.*.id
# }
