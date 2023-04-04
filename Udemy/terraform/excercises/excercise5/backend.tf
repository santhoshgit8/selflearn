terraform {
  backend "s3" {
    bucket = "singabt1"
    key = "tf/backend"
    region = "ap-southeast-1"
    
  }
}