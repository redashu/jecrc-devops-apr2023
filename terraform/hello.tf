provider "aws" {
    access_key = "AKX7"
    secret_key = "E"
    region = "ap-south-1" # mumbai 
  
}

resource "aws_instance" "ashu-vm1" {
    ami = "ami-0c768662cc797cd75" # ami-id 
    instance_type = "t2.micro" 
    key_name = "hellokey" # using existing key 
  
}
