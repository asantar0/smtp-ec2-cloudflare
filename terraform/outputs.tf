#EC2's Outputs
output "ec2_instance_id" {
  description = "AWS ec2 instance ID"
  value       = aws_instance.DMZ-Server-instance.id
  sensitive   = false
}

output "ec2_private_ip" {
  description = "The private IP address assigned to the instance"
  value       = aws_instance.DMZ-Server-instance.private_ip
  sensitive   = false
}

output "ami" {
  description = "AMI ID that was used to create the instance"
  value       = aws_instance.DMZ-Server-instance.ami
  sensitive   = false
}

output "availability_zone" {
  description = "The availability zone of the created instance"
  value       = aws_instance.DMZ-Server-instance.availability_zone
  sensitive   = false
}

#Elastic IP's Outputs
output "eip_id" {
  description = "EIP Allocation id"
  value       = aws_eip.DMZ-Server-EIP.id
  sensitive   = false
}

output "eip_public_ip" {
  description = "EIP Public IP address"
  value       = aws_eip.DMZ-Server-EIP.public_ip
  sensitive   = false
}

output "eip_public_DNS" {
  description = "EIP Public DNS"
  value       = aws_eip.DMZ-Server-EIP.public_dns
  sensitive   = false
}
