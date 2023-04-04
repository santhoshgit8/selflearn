provider "aws" {
    region = "us-west-2"
   # access_key = ""
   # secret_key = ""
     
}
resource "aws_instance" "instance1" {
    ami = "ami-0efa651876de2a5ce"
    instance_type = "t2.micro"
    key_name =  "orgGlkey2"
    vpc_security_group_ids = ["sg-0ae0bfec0e84677a1"]
    tags = {
        Name = "instance2"
    }
  
}