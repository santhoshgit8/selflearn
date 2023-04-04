variable region {
  default = "us-west-2"
}
variable zone {
    default = "us-west-2b"
  
}
variable ami {
    type = map
    default = {
        us-west-1 = "ami-07bc04fdc13241142"
         us-west-2 = "ami-0efa651876de2a5ce"
    }
  
}