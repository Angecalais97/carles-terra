variable "region" {
  description = "AWS region to deploy resources in"
  default     = "us-east-1"
}

variable "instance_type" {
  description = "Type of EC2 instance"
  default     = "t2.micro"
}


variable "ami" {
  description = "Type of EC2 instance"
  default     = "ami-0866a3c8686eaeeba"
}
