variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
    default = "us-east-1" 
}
variable "WIN_AMIS" {
    type = "map"
    default = {
        us-east-1 = "ami-09d95fab7fff3776c" 
        us-east-2 = ""
        us-west-1 = ""
    }
}
