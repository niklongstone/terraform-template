variable "aws_region" {
  description = "The AWS region to create resources in."
  default     = "eu-west-1"
}

variable "aws_access_key" {
  description = "The AWS access key."
  default     = "YOUR_ACCESS_KEY"
}

variable "aws_secret_key" {
  description = "The AWS secret key."
  default     = "YOUR_SECRET
}

variable "aws_private_key" {
  description = "AWS private key."
  default = "/home/niklongstone/nik.pem"
}
