resource "aws_key_pair" "dove-key" {
    key_name = "dovekey"
    public_key = file("dovekey.pub")
  
}

resource "aws_instance" "instance1" {
    ami =      var.ami[var.region]
    instance_type="t2.micro"
    availability_zone = var.zone
    key_name = aws_key_pair.dove-key.key_name
    vpc_security_group_ids = ["sg-0ae0bfec0e84677a1"]
    tags  = {
        Name ="pro1"
    }
  

provisioner "file" {
    source= "web.sh"
    destination = "/tmp/web.sh"

}

provisioner "remote-exec" {

  inline = [ 
     "chmod +x /tmp/web.sh" ,
    "sudo /tmp/web.sh"
  ]

}

connection {
    user = var.user
    private_key = file("dovekey")
    host= self.public_ip
}
}
output "public_ip" {

   value = aws_instance.instance1.public_ip
  
}

output "private_ip" {

   value = aws_instance.instance1.private_ip
  
}