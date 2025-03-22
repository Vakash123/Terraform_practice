# command to import the manual services 
#after terraform init we use terraform import aws_instance.akky (instance ID)

resource "aws_instance" "akky" {
    ami = "ami-05c179eced2eb9b5b"
    instance_type = "t2.micro"
    key_name = "Temo_Networking_1"
    availability_zone = "ap-south-1b"
    tags = {
      Name = "akash"
    }
}