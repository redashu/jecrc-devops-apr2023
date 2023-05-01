resource "aws_key_pair" "my-key1" {
    public_key = file("C:\\Users\\Administrator\\.ssh\\id_rsa.pub")
    key_name = "ashu-key"
  
}

#  aws_key_pair.my-key1.key_name
