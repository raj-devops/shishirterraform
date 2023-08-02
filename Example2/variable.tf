variable "aws_region" {

  type = string

}

variable "vpc_name" {

  type = string

}

variable "vpc_cidr_block" {

  type = string

}

variable "vpc_availability_zones" {

  type    = list(string)
  default = ["ap-south-1a", "ap-south-1b"]

}

variable "vpc_public_subnets" {

  type = list(string)

}
