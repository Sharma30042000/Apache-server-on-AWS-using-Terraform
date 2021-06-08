resource "aws_instance" "foo" {
depends_on = [
    aws_key_pair.test,
    aws_security_group.allow_ssh,
  ]
  ami           = "ami-010aff33ed5991201" # us-west-2
  instance_type = "t2.micro"
  key_name =  aws_key_pair.test.key_name
  security_groups = [aws_security_group.allow_ssh.name]

 }
