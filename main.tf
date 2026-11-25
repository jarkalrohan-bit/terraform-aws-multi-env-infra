# dev infrastructure
module "dev-infra" {
  source         = "./infra-app"
  env            = "dev"
  bucket_name    = "infra-app-bucket-1234"
  instance_count = 1
  instance_type  = "t2.micro"
  ec2_ami_id     = "ami-04060762724eee84a" # Amazon Linux
  hash_key       = "studentID"

}


# prd infrastructure
module "prd-infra" {
  source         = "./infra-app"
  env            = "prd"
  bucket_name    = "infra-app-bucket-5678"
  instance_count = 2
  instance_type  = "t2.medium"
  ec2_ami_id     = "ami-01021d36a011dc159" # ubuntu
  hash_key       = "studentID"

}



# stg infrastructure
module "stg-infra" {
  source         = "./infra-app"
  env            = "stg"
  bucket_name    = "infra-app-bucket-9101112"
  instance_count = 1
  instance_type  = "t2.small"
  ec2_ami_id     = "ami-04060762724eee84a" # Amazon Linux
  hash_key       = "studentID"

}