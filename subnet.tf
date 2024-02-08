resource "aws_subnet" "subnet1" {
  vpc_id            = aws_vpc.main.id
  availability_zone = "us-east-1a"
  cidr_block        = "10.0.0.0/24"

  tags = {
    Name     = "Public-subnet-01"
    Batch    = "batch-10"
    Location = "us-east-1"
  }
}


// subnet 02

# resource "aws_subnet" "subnet2" {
#   vpc_id     = aws_vpc.main.id
#   cidr_block = "10.0.1.0/24"

#   tags = {
#     Name     = "Public-subnet-02"
#     Batch    = "batch-10"
#     Location = "us-east-1"
#   }
# }


# resource "aws_subnet" "subnet2" {
#   vpc_id            = aws_vpc.main.id
#   availability_zone = "us-east-1b"
#   cidr_block        = "10.0.1.0/24"

#   tags = {
#     Name     = "Private-subnet-01"
#     Batch    = "batch-10"
#     Location = "us-east-1"
#   }
# }