# ==========================================
# EC2 Public IPs
# ==========================================
output "dev_ec2_public_ip" {
  value = module.dev-infra.ec2_public_ip
}
output "prd_ec2_public_ip" {
  value = module.prd-infra.ec2_public_ip
}
output "stg_ec2_public_ip" {
  value = module.stg-infra.ec2_public_ip
}

# ==========================================
# EC2 Public DNS
# ==========================================
output "dev_ec2_public_dns" {
  value = module.dev-infra.ec2_public_dns
}
output "prd_ec2_public_dns" {
  value = module.prd-infra.ec2_public_dns
}
output "stg_ec2_public_dns" {
  value = module.stg-infra.ec2_public_dns
}

# ==========================================
# S3 Buckets
# ==========================================
output "dev_s3_bucket" {
  value = module.dev-infra.s3_bucket_name
}
output "prd_s3_bucket" {
  value = module.prd-infra.s3_bucket_name
}
output "stg_s3_bucket" {
  value = module.stg-infra.s3_bucket_name
}

# ==========================================
# DynamoDB Tables
# ==========================================
output "dev_dynamodb_table" {
  value = module.dev-infra.dynamodb_table_name
}
output "prd_dynamodb_table" {
  value = module.prd-infra.dynamodb_table_name
}
output "stg_dynamodb_table" {
  value = module.stg-infra.dynamodb_table_name
}