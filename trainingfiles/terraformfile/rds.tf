resource "aws_db_instance" "myrds" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "8.0.27"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "foo"
  password             = "foobarbaz"
  storage_type         = "gpp2"
  identifier           = "rdstf"
  publicly_accessible = true
  skip_final_snapshot  = true

  tags = {
     Name = "MyRDS"
  }
}
