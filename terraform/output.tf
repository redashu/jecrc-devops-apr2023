output "my-vm-ip" {
  value = aws_instance.ashu-vm1[0].public_ip
}
