output "my_key" {
  value = aws_key_pair.my_key.key_name
}

output "public_ip" {
  value = aws_instance.web_app.public_ip

}

output "sg" {
  value = aws_security_group.my_sg.id

}