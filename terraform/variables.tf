variable "my-image" {
  type = string
  default = "ami-0c768662cc797cd75"
  description = "this is my amazon linux image id"
}

variable "size" {
  type = string
  default = "t2.micro"
  description = "this is my vm resourece size "
}
variable "num-of-inst" {
    type = number
    default = 1
    description = "number of vm we want "
  
}
