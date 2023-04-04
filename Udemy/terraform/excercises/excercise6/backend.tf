terraform {
  backend "s3" {
    bucket = "singabt1"
    key = "tf/ex6"
    region = "ap-southeast-1"
    
  }
}