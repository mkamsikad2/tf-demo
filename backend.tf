terraform {
  backend "s3" {
    bucket = "mkamsika-terraform-backend"
    key    = "ec2/terraform.tfstate"
    region = "eu-west-2"
    dynamodb_table = "terraform-state-locking"
  }
}

resource "time_sleep" "wait_120_seconds" {
  create_duration = "120s"
}