resource "aws_s3_bucket" "b" {
  #ts:skip=AC_AWS_0207
  #ts:skip=AC_AWS_0214
  #ts:skip=AWS.AKK.DP.HIGH.0012
  #ts:skip=AC_AWS_0497


  bucket = "ami-tf-test-bucket"
  acl    = "public-read"
  

  tags = {
    Name        = "Terrascan-demo"
    Environment = "Test"
  }
  versioning {
    enabled = true
  }
}

resource "aws_s3_bucket" "object" {
  bucket = "aws_s3_bucket.b.id"
  key = "terrascan-demo-video"
  acl = "public-read"
  source = "/Users/Muritala.Aminu/terraform/project/terrascan-s3/zoom_0.mp4"
}