variable "ami_id" {
    description = "providing the ami id this this variable -1 "
    type = string
    default = " "
}

variable "type-of-insatnce" {
    description = "Providing the type of instance either it is t2.micro/t2.medium/t2.nano"
    type = string
    default = " "
}

variable "key_assignee" {
    description = "We need to provide the private key to launch an instance "
    type = string
    default = " "
}

variable "Name_of_The_server" {
    description = "providing the name of the server"
    type = string
    default = " "
  
}