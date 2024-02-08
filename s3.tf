# resource "aws_s3_bucket" "s3" {
#   bucket = "my-tf-0802-bucket"

#   tags = {
#     Name        = "My-bucket"
#     Environment = "Dev"
#   }
# }




# resource "aws_s3_bucket_lifecycle_configuration" "bucket-config" {
#   bucket = aws_s3_bucket.s3.id

#   rule {
#     id = "log"

#     expiration {
#       days = 90
#     }

#     filter {
#       and {
#         prefix = "log/"

#         tags = {
#           rule      = "log"
#           autoclean = "true"
#         }
#       }
#     }

#     status = "Enabled"

#     transition {
#       days          = 30
#       storage_class = "STANDARD_IA"
#     }

#     transition {
#       days          = 60
#       storage_class = "GLACIER"
#     }
#   }

#   rule {
#     id = "tmp"

#     filter {
#       prefix = "tmp/"
#     }

#     expiration {
#       date = "2023-01-13T00:00:00Z"
#     }

#     status = "Enabled"
#   }
# }



# resource "aws_s3_bucket_versioning" "versioning" {
#   bucket = aws_s3_bucket.s3.id
#   versioning_configuration {
#     status = "Enabled"
#   }
# }

# resource "aws_s3_bucket_lifecycle_configuration" "versioning-bucket-config" {
#   # Must have bucket versioning enabled first
#   depends_on = [aws_s3_bucket_versioning.versioning]

#   bucket = aws_s3_bucket.s3.id

#   rule {
#     id = "config"

#     filter {
#       prefix = "config/"
#     }

#     noncurrent_version_expiration {
#       noncurrent_days = 90
#     }

#     noncurrent_version_transition {
#       noncurrent_days = 30
#       storage_class   = "STANDARD_IA"
#     }

#     noncurrent_version_transition {
#       noncurrent_days = 60
#       storage_class   = "GLACIER"
#     }

#     status = "Enabled"
#   }
# }