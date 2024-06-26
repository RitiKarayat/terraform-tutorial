output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.app_server.id
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.app_server.public_ip
}

output "instance_security_group" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.app_server.vpc_security_group_ids
}

