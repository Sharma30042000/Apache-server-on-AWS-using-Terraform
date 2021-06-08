provider "tls" {}
resource "tls_private_key" "t" {
    algorithm = "RSA"
}
resource "aws_key_pair" "test" {

depends_on = [
    tls_private_key.t,
  ]
    key_name   = "tf-key"
    public_key = "${tls_private_key.t.public_key_openssh}"
}

provider "local" {}

resource "local_file" "key" {

depends_on = [
    aws_key_pair.test,
  ]
    content  = "${tls_private_key.t.private_key_pem}"
    filename = "tf-key.pem"
       
}