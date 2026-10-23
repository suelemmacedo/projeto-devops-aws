resource "aws_instance" "website-server" {
  ami                         = "ami-053ef5d7ebe355f4a"
  instance_type               = "m7i-flex.large"
  subnet_id                   = "subnet-0b4127c6dd7e8751b"
  associate_public_ip_address = true
  key_name                    = "chave-site-prod"
  vpc_security_group_ids      = [aws_security_group.website-sg.id]
  iam_instance_profile        = "ecr-ec2-role"

  tags = {
    Name        = "website-server"
    Provisioned = "Terraform"
    Client      = "Suelem"
  }
}