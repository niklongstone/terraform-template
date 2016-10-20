provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "${var.aws_region}"
}

module "web" {
  source = "web/"
  instance_type = "t2.nano"
  aws_private_key = "${var.aws_private_key}"  
}

module "security_groups" {
  source = "security/"
}
