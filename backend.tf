terraform {

  backend "s3" {

    bucket = "saketh-tfstate-12345"

    key = "eks/dev/terraform.tfstate"

    region = "ap-south-1"

  }

}
