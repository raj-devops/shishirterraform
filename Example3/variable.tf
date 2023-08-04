variable "aws_region" {
  type = string

}

variable "s3_bucket_name" {
  type = string

}

variable "s3_bucket_tag" {
  type = map(string)
  default = {
    Purpose = "Terraform cloud"
    Cloud   = "AWS"
  }

}
