resource "null_resource" "remote_exe" {


provisioner "remote-exec" {
 connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key = file("./${local_file.key.filename}")
    host     = aws_instance.foo.public_ip
  }
   
   
    inline = [
      "sudo yum install httpd -y",
      "sudo systemctl start httpd ",
    ]
  }

 

  
}