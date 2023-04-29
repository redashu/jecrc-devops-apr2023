provider "aws" {
    access_key = "X7"
    secret_key = "ah"
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
    tags = {
      "Name" = "ashu-inux-vm-by-tf"
    }
    provisioner "file" {
      source = "web.sh"
      destination = "/home/ec2-user/web.sh"
    }
    connection { 
      type = "ssh"
      user = "ec2-user"
      private_key = file("C:\\Users\\Administrator\\.ssh\\id_rsa")
      host = self.public_ip # auto detect public ip of vm 
    }
    
  
}
