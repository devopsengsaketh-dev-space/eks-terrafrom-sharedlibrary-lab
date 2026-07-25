variable "aws_region" {

  description = "AWS region where resources will be created"

  type = string
}

variable "vpc_cidr" {
  type = string
}


variable "vpc_name" {
  type = string
}

variable "ami_id" {

  type = string

}


variable "instance_type" {

  type = string

}

variable "subnet_cidr" {

  type = string

}


variable "availability_zone" {

  type = string

}

