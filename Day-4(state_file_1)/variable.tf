variable name_of_the_instance {
  type        = string
  default     = "Akash"
  description = "Providing the name of the server"
}

variable ami_id {
    type = string
    default = "ami-05c179eced2eb9b5b"
    description = "providing the AMI ID for an instance "
}

variable type_of_instance {
    description = "Providing the values"
    default = "t2.micro"
    type = string
    
}

variable key_pair {
    description = "providing my key pair into this"
    type = string
    default = "Temo_Networking_1"
}

variable "name_of_the_bucket" {
    description = "Providing the name of the bucket"
    type = string
    default = "vankadariakash"
  
}
