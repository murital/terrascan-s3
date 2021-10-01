resource "aws_s3_bucket" "b" {
  bucket = "ami-tf-test-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Test"
  }
  versioning {
    enabled = true
  }
}
