resource "aws_instance" "web_app" {
  ami                    = var.image
  instance_type          = var.instance_size
  key_name               = aws_key_pair.my_key.key_name
  vpc_security_group_ids = [aws_security_group.my_sg.id]
  tags = {
    Name = "Automation-instance"
  }
  user_data = file("${path.module}/script.sh")

  provisioner "file" {
    source      = "${path.module}/Readme.md"
    destination = "/tmp/Readme.md"
    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = file("${path.module}/id_rsa")
      host        = self.public_ip
    }
  }
}
