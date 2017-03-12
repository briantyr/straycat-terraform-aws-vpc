/*
* Define our global vars and any other setup elements.
*
* TODO: Handle multi-region in some manner
*/
variable "aws_profile" {}

variable "aws_account" {}

variable "aws_account_id" {}

variable "aws_region" {
  default = "us-east-1"
}

# FIXME: replace hard coding with an aws provider var if I can figure out how
# to limit the list size.
variable "aws_availability_zones" {
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}


# VPC setup
variable "vpc_cidr_block" {
  type = "string"
  description = "CIDR block fro public VPC"
}

variable "vpc_private_subnets" {
  type = "list"
  description = "List of subnet CIDR blocks. Should be as many as there ar AZs used."
}

variable "vpc_public_subnets" {
  type = "list"
  description = "List of subnet CIDR blocks. NAT gateways will live here with path to internet gateway"
}

variable "private_subnets_allow_all" {
  description = "Whether to allow all traffic to all hosts inside the private subnets"
}

variable "public_subnets_allow_all" {
  description = "Whether to allow all traffic to all hosts inside the public subnets"
}
