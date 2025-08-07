provider aws {
    region = var.region
}

resource aws_instance web {
    ami           = var.ami_id
    instance_type = var.instance_type
}

variable region {}
variable ami_id {}
variable instance_type {}

terraform {
  backend "s3" {
    bucket = "kaizen-patrickm"
    key    = "terraform.tfstate"
    region = "us-east-2"
  }
}

