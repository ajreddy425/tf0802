variable "vpc_cidr" {
  default     = "10.0.0.0/16"
  type        = string
  description = "enter the vpc cidr block"
}

// inside variable block everything is optional

# variable "vpc_tag" {
#   default     = "vpc-terrafrom"
#   type        = string
#   description = "enter the tag for your vpc"
# }

