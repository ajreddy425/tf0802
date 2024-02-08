output "list_of_azs" {
  # value = data.aws_availability_zones.available.names
  value = local.a
}

output "no_of_azs" {
  # value= length(data.aws_availability_zones.available.names)
  value = local.b
}

output "reg_name" {
  # value = data.aws_availability_zones.available.id
  value = local.c
}

output "vpc_id" {
  value = aws_vpc.main.id
}

output "account_id" {
  value = data.aws_caller_identity.current.account_id
}


# output "sub_ids" {
#   value = aws_subnet.subnet1[4].*.id

# }

# output "sub_id" {
#   value = aws_subnet.subnet1.*.id[5]

# }