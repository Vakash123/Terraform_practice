module "akash" {
    source = "../Day-2"
    ami_id = "ami-05c179eced2eb9b5b"
    type_of_instance = "t2.micro"
    key = "Temo_Networking_1"
}