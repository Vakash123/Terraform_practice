resource "aws_s3_bucket" "vanaaakash" {
    bucket = "vanakaaaakash"
}

resource "aws_instance" "akash" {
    ami = "ami-05c179eced2eb9b5b"
    key_name = "Temo_Networking_1"
    instance_type = "t2.micro"
    depends_on = [ aws_s3_bucket.vanaaakash]

  
}