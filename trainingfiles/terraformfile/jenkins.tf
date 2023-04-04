####vars.tf###

variable "region" {
  type    = string
  default = "us-east-1"
}
#
# String Variable
#
variable "ssh_key_name" {
  type = string
}
#
# String Variable
#
variable "instance_type" {
  type    = string
  default =
}


###jenkins.tf###
provider "aws" {
  region  = var.region
}
resource "aws_security_group" "JenkinsSG" {
  name = "Jenkins SG"

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "JenkinsEC2" {
  instance_type          = var.instance_type
  ami                    = data.aws_ami.ubuntu.id
  vpc_security_group_ids = [aws_security_group.JenkinsSG.id]
  key_name               = var.ssh_key_name

  tags = {
    Name = "terraform-jenkins-master"
  }
  user_data = file("userdata.sh")
}

data "aws_ami" "ubuntu" {
  most_recent = true
  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-*-18.04-amd64-server-*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["099720109477"]

}

output "jenkins_endpoint" {
  value = formatlist("http://%s:%s/", aws_instance.JenkinsEC2.*.public_ip, "8080")
}
      
	  #####userdata.sh
	  
#!/bin/bash
sudo apt-get -y update
# Install OpenJDK 8
sudo apt-get -y install openjdk-8-jdk
# Install Jenkins
sudo wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo echo "deb https://pkg.jenkins.io/debian-stable binary/" >> /etc/apt/sources.list
sudo apt-get -y update
sudo apt-get -y install jenkins
sudo systemctl start jenkins.service
sudo chkconfig jenkins on

###:q!
terraform.tfvars
ssh_key_name="global"



	  
	  



