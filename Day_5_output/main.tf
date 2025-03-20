resource "aws_instance" "name" {
    ami = "ami-05c179eced2eb9b5b"
    instance_type = "t2.micro"
    key_name = "Temo_Networking_1"
    tags = {
      Name = "akash"
    }
}