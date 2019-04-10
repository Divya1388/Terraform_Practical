# Generating key using AWS tls_private_key api
/* resource "tls_private_key" "tls_generated_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "tls_key" {
  key_name   = "tls_key"
  public_key = "${tls_private_key.tls_generated_key.public_key_openssh}"
}

 output private_key{
 value = "${tls_private_key.tls_generated_key.private_key_pem}"
 } */

# Generating Key using SSH

resource "aws_key_pair" "ssh_key" {
  key_name   = "ssh_key"
  public_key = "${file("ssh_key.pub")}"
}
