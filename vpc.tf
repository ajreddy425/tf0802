resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name     = "vpc-terraform-${local.ws}"
    Batch    = "batch-10"
    Location = "us-east-1"
  }
}


// put ctrl + ? to put all lines in comment/uncomment
// resource "resource_name""logical_name" {
// arguments
// }

// logical names can be anything and it shoube unique like S3 bucket names

// vpc-073c552afdcb6177c


