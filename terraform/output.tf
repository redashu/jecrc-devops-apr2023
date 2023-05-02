output "my-vm-ip" {
  value = aws_instance.ashu-vm1[0].public_ip
  
}
output "vm2-ip" {
  value = aws_instance.ashu-vm1[1].public_ip
}

output "list-ip" {
  value = [ for ip in aws_instance.ashu-vm1 : ip.public_ip ]
}
