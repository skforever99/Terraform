# variable for ec2-instance type

variable "ec-2-instance-type" {
  type    = string
  default = "t3.micro"
}

#variable for ami

variable "ami" {
  type    = string
  default = "ami-0152204c1a187337c"
}