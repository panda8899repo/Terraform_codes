provider "aws" {
  endpoints {
    sts = "https://sts.us-east-1.amazonaws.com" # No trailing slash
  }
}
terraform {
 backend "s3" {
   bucket = "backendterraform123"
   key = "terraform/demmo1"
   region = "us-east-1"
  }
}
