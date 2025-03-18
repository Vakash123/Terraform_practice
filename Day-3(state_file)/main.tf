resource "aws_instance" "name" {
    ami = var.ami_id
    instance_type = var.type-of-insatnce
    key_name = var.key_assignee
    tags = {
        Name = var.Name_of_The_server
    }   
}