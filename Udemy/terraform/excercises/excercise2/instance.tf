resource "instance" "insance2" {
      ami = vars.ami[fvar.region]
    instance_type = "t2.micro"
    key_name =  "orgGlkey2"
    vpc_security_group_ids = ["sg-0ae0bfec0e84677a1"]
    availabilty_zone= var.zone
     tags = {
        Name = "instance1"
    }
  
}