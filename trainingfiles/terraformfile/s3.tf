resource "aws_s3_bucket" "bucket" {
   bucket = "globshfahfasf123logic"
   acl = "public-read"

  versioning {
   enabled = true
}
}
#resource "aws_s3_bucket_object" "object" {
#bucket = aws_s3_bucket.bucket.id
#key = "sample.txt"
#source = "/root/s3-global/sample.txt"
#}

resource "aws_s3_bucket_object" "test1" {
for_each = ffileset("/root/s3-global","*")
bucket = aws_s3_bucket.bucket.id
key = each.value
source = "/root/s3-global/${each.value}"
}


#output "fileset-result" {
 #value = fileset(path, "**/*.txt")
#}

