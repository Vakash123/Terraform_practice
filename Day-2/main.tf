resource "aws_instance" "name" {
    ami = var.ami_id
    instance_type = var.type_of_instance
    key_name = var.key
}