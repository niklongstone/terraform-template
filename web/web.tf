variable "instance_type" {}
variable "aws_private_key" {}

resource "aws_instance" "web" {
  tags {
    Name = "Web"
  }
  ami = "ami-f3d99680"
  instance_type = "${var.instance_type}"
  provisioner "remote-exec" {
    inline = [
      "sudo docker run -d -p 80:5000 training/webapp"
    ]
    connection {
      user = "ec2-user"
      private_key = "${file(var.aws_private_key)}"
    }
  }
  security_groups = ["allow_in_ssh", "allow_in_http", "allow_out_all"]
  key_name = "nicola"
}
