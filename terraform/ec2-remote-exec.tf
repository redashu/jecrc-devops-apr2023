resource "aws_instance" "jecrc-vm1" {
    ami = "ami-02eb7a4783e7e9317" # this ubuntu ami id 
    instance_type = "t2.micro" 
    key_name = "${aws_key_pair.my-key1.key_name}" 
    tags = {
      "Name" = "jecrc-vm-by-terraform"
    }
    provisioner "remote-exec" {
      inline = [ 
        "cal >/tmp/hello.txt",
        "sleep 2",
        "date >>/tmp/hello.txt" 
       ]
    }
    connection {
      type = "ssh"
      user = "ubuntu"
      host = self.public_ip 
      private_key = file("C:\\Users\\Administrator\\.ssh\\id_rsa")
    }

  
}
