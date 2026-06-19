# output block to fetch both instance public IP
output "ec2-public-ip" {
  value = aws_instance.sunil-ec2[*].public_ip
}

# out block to fetch 1st instance public IP
output "ec2-public-ip-1" {
  value = aws_instance.sunil-ec2[0].public_ip
}

# out block to fetch 2nd instance public IP
output "ec2-public-ip-2" {
  value = aws_instance.sunil-ec2[1].public_ip
}