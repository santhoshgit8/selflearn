variable region {
  default = "us-west-2"
}
variable zone1 {
    default = "us-west-2a"
  
}
variable zone2 {
    default = "us-west-2b"
  
}
variable zone3 {
    default = "us-west-2c"
  
}
variable zone4 {
    default = "us-west-2d"
  
}
variable ami {
    type = map
    default = {
        us-west-1 = "ami-07bc04fdc13241142"
         us-west-2 = "ami-0efa651876de2a5ce"
    }
  
}

variable "pub_key" {
    default =  "dovekey.pub"
  
}

variable "pri_key" {
    default =   "dovekey"
  
}

variable user {
  default = "ec2-user"
}

variable myip {
  default = "0.0.0.0/0"
  
}