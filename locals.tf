locals {
  a  = data.aws_availability_zones.available.names
  b  = length(local.a)
  c  = data.aws_availability_zones.available.id
  ws = terraform.workspace
}
// local.a  
// local.b
// local.c
// local.ws
