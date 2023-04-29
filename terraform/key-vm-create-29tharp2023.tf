provider "aws" {
    access_key = "A"
    secret_key = ""
    region = "ap-south-1" # mumbai 
}

resource "aws_key_pair" "ashu-key11" {
    key_name = "ashu-key-by-terraform"
    public_key = file("C:\\Users\\Administrator\\.ssh\\id_rsa.pub")

  
}

resource "aws_instance" "ashu-vm1" {
    ami = "ami-0c768662cc797cd75" # ami-id 
    instance_type = "t2.micro" 
    key_name = "${aws_key_pair.ashu-key11.key_name}"
    
  
}
