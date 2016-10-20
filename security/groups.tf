resource "aws_security_group" "allow_in_ssh" {
  name = "allow_in_ssh"
  description = "Allow SSH inbound traffic"

  ingress {
      from_port = 22
      to_port = 22
      protocol = "TCP"
      cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "allow_in_http" {
  name = "allow_in_http"
  description = "Allow SSH inbound traffic"

  ingress {
      from_port = 80
      to_port = 80
      protocol = "TCP"
      cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "allow_out_all" {
  name = "allow_out_all"
  description = "Allow all outbound traffic"

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
