resource "aws_ebs_volume" "ebs" {
  availability_zone = aws_instance.foo.availability_zone
  size              = 1

  tags = {
    Name = "Web Server HD by TF"
  }
}
