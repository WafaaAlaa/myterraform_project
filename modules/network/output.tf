output "vpc_id" {
  value = aws_vpc.wafaa_vpc
}

output "subnet_id" {
  value = aws_subnet.private_subnet.id
}

output "subnet_id" {
  value = aws_subnet.public_subnet.id
}