variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
  default = "ap-south-1"
}
variable "AMIS" {
  type = "map"
  default = {
    us-east-1 = "ami-13be557e"
    us-west-2 = "ami-06b94666"
    eu-west-1 = "ami-844e0bf7"
    ap-south-1 = "ami-825e34ed"
  }
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "ajkey"
}
variable "PATH_TO_PUBLIC_KEY" {
  default = "ajkey.pub"
}
variable "INSTANCE_USERNAME" {
  default = "ubuntu"
}
