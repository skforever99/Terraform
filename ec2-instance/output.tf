# output block to fetch public IP
output "ec2-public-ip" {
  value = aws_instance.sunil-ec2.public_ip
}

# output block to fetch private IP
output "ec2-private-ip" {
  value = aws_instance.sunil-ec2.private_ip
}

# output block to fetch public DNS
output "ec2-public-dns" {
  value = aws_instance.sunil-ec2.public_dns
}