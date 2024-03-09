resource "aws_key_pair" "my_key" {
  key_name   = "key-tf"
  public_key = file("${path.module}/id_rsa.pub")
}