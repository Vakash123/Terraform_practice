variable "ami_id" {
    description = "Need to take the value from AWS EC-2"
    type = string
    default = " "
}

variable "type_of_instance" {
    description = "Need to provide the type of instance"
    type = string
    default = " "
}

variable "key" {
    description = "Providing the key pair for creating an EC2 instance"
    type = string
    default = " "
}