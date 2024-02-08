# resource "aws_iam_role" "ec2_role" {
#   name = "ec2_role"

#   assume_role_policy = file("./scripts/assumrole_policy.json")

#   tags = {
#     Name = "ec2-role"
#   }
# }

# // instance profile

# resource "aws_iam_instance_profile" "test_profile" {
#   name = "test_profile"
#   role = aws_iam_role.ec2_role.name
# }

# resource "aws_iam_role_policy" "test_policy" {
#   name = "test_policy"
#   role = aws_iam_role.ec2_role.id

#   policy = file("./scripts/role_policy.json")
# }

# // attach role to ec2 instance

# resource "aws_instance" "role-test" {
#   ami                  = "ami-0277155c3f0ab2930"
#   instance_type        = "t2.micro"
#   iam_instance_profile = aws_iam_instance_profile.test_profile.name
#   #   key_name = "mytestpubkey"
# }