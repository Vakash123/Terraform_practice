resource "aws_vpc" "prod" {
    tags = {
      Name = "akash"
    }
    cidr_block = "10.0.0.0/16"
}

resource "aws_internet_gateway" "prod" {
    vpc_id = aws_vpc.prod.id
    tags = {
      Name = "IG"
    }
}

resource "aws_subnet" "prod" {
    vpc_id = aws_vpc.prod.id
    tags = {
      Name = "public_subnet"
    }
    cidr_block = "10.0.0.0/25"
    availability_zone = "ap-south-1a"
  
}

resource "aws_route_table" "prod" {
    vpc_id = aws_vpc.prod.id
    route {
        gateway_id = aws_internet_gateway.prod.id
        cidr_block = "0.0.0.0/0"
    }
    tags = {
      Name = "akash"
    }
}
resource "aws_route_table_association" "prod" {
    route_table_id = aws_route_table.prod.id
    subnet_id = aws_subnet.prod.id
}

resource "aws_security_group" "prod" {
    tags = {
      Name = "Akash"
    }
    description = "allow ssh and https protocol"
    vpc_id = aws_vpc.prod.id
     ingress {
        description = "allowing ssh protocol"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
     ingress  {
        description = "allow https protocol"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_instance" "prod" {
    ami = "ami-05c179eced2eb9b5b"
    key_name = "Temo_Networking_1"
    instance_type = "t2.micro"
    #security_groups = aws_security_group.prod.id
    subnet_id = aws_subnet.prod.id
    availability_zone = "ap-south-1a"
    vpc_security_group_ids = [aws_security_group.prod.id]
}

