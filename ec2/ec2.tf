# Provision Ec2 with tls_private_key
/* resource "aws_instance" "web" {
  ami           = "${lookup(var.instance_ami, var.aws_region)}"
  instance_type = "${var.instance_type}"
  key_name = "tls_key"
  depends_on = ["aws_key_pair.tls_key"]
}

output "public_ip" {
  value = ["${aws_instance.web.public_ip}"]
} */

# Proision Ec2 by generating key in the console
/* resource "aws_instance" "web" {
  ami           = "${lookup(var.instance_ami, var.aws_region)}"
  instance_type = "${var.instance_type}"
  key_name      = "${aws_key_pair.ssh_key.key_name}"
}

output "public_ip" {
  value = ["${aws_instance.web.public_ip}"]
} */


# Provision Ec2 by generating SSH Key
resource "aws_instance" "web" {
  ami           = "${lookup(var.instance_ami, var.aws_region)}"
  instance_type = "${var.instance_type}"
  key_name      = "${aws_key_pair.ssh_key.key_name}"
}

output "public_ip" {
  value = ["${aws_instance.web.public_ip}"]
  }
