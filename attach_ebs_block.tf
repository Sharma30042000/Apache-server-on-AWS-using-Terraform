resource "aws_volume_attachment" "ebs_att" {

depends_on = [
  aws_ebs_volume.ebs,
]


  device_name = "/dev/sdc"
  volume_id   = aws_ebs_volume.ebs.id
  instance_id = aws_instance.foo.id
  force_detach = true
}