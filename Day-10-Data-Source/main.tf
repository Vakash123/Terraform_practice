data "aws_subnets" "akash" {
    filter {
      name = "tag:Name"
      values = ["akash1"]
    }
}

data "aws_security_groups" "akash" {
    filter {
      name = "tag:Name"
      values = ["3 Tier"]
    }
  
}

resource "aws_instance" "akash" {
    subnet_id = data.aws_subnets.akash.ids[0]  # Select first subnet from list
    vpc_security_group_ids = data.aws_security_groups.akash.ids  # Correct syntax

    ami           = "ami-002f6e91abff6eb96"
    key_name      = "Temo_Networking_1"
    instance_type = "t2.micro"

    tags = {
      Name = "akash-instance"
    }
}