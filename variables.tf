variable "ports" {
  type    = list(number)
  default = [22, 8080, 443, 3306, 80, 443]
}

variable "image" {
  type    = string
  default = "ami-07d9b9ddc6cd8dd30"
}
variable "instance_size" {
  type    = string
  default = "t2.micro"
}