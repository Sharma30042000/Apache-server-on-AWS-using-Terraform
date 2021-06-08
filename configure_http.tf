resource "null_resource" "remote_exe" {
depends_on = [
  aws_volume_attachment.ebs_att
]

provisioner "remote-exec" {
 connection {
    type     = "ssh"
    user     = "ec2-user"
    private_key = file("./${local_file.key.filename}")
    host     = aws_instance.foo.public_ip
  }
   
   
    inline = [
      "sudo yum  install httpd  -y",
      "sudo systemctl start httpd",
      "sudo mkfs.ext4 /dev/xvdc",
      "sudo  mount /dev/xvdc  /var/www/html",
      "sudo yum install git -y",
      "sudo rm -rf /var/www/html/*",
      "sudo git clone https://github.com/Sharma30042000/myweb1.git   /var/www/html/",
      "sudo systemctl restart httpd",
    ]
  }

 

  
}