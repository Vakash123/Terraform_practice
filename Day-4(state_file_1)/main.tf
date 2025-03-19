resource "aws_instance" "name" {
    ami = var.ami_id
    instance_type = var.type_of_instance
    key_name = var.key_pair
    tags = {
        Name = var.name_of_the_instance
    }   

}

resource "aws_s3_bucket" "name" {
    bucket = var.name_of_the_bucket
  
}