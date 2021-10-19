resource "aws_s3_bucket" "b" {
  #ts:skip=AC_AWS_0207
  #ts:skip=AC_AWS_0214
  #ts:skip=AWS.AKK.DP.HIGH.0012
  #ts:skip=AC_AWS_0497

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
   