module "S3_Bucket" {
    source = "terraform-aws-modules/s3-bucket/aws"
    bucket = "my-s3-bucketttt"
    acl    = "private"

    control_object_ownership = true
    object_ownership         = "ObjectWriter"

    versioning = {
    enabled = true
  }
}
  
