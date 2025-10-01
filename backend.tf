terraform {
  backend "s3" {
    bucket = "pramodreddybeemireddyxyz"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
