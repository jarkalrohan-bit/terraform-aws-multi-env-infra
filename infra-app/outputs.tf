# EC2 outputs
output "ec2_public_ip" {
  description = "Public IPs of the EC2 instances"
  value       = aws_instance.my_instance[*].public_ip
}

output "ec2_public_dns" {
  description = "Public DNS of the EC2 instances"
  value       = aws_instance.my_instance[*].public_dns
}

output "ec2_private_ip" {
  description = "Private IPs of the EC2 instances"
  value       = aws_instance.my_instance[*].private_ip
}

# S3 and DynamoDB names
output "s3_bucket_name" {
  description = "Name of the S3 bucket"
  value       = aws_s3_bucket.my_bucket.bucket
}

output "dynamodb_table_name" {
  description = "Name of the DynamoDB table"
  value       = aws_dynamodb_table.dynamodb-table.name
}
