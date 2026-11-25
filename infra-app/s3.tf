# This is s3 bucket

resource "aws_s3_bucket" "my_bucket" {

  bucket = "${var.env}-${var.bucket_name}"

  tags = {
    Name = "${var.env}-${var.bucket_name}"
    Environment = var.env
  }
}