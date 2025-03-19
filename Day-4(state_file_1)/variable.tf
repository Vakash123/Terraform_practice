variable name_of_the_instance {
  type        = string
  default     = " "
  description = "Providing the name of the server"
}

variable ami_id {
    type = string
    default = " "
    description = "providing the AMI ID for an instance "
}

variable type_of_instance {
    description = "Providing the values"
    default = " "
    type = string
    
}

variable key_pair {
    description = "providing my key pair into this"
    type = string
    default = " "
}

variable "name_of_the_bucket" {
    description = "Providing the name of the bucket"
    type = string
    default = " "
  
}
