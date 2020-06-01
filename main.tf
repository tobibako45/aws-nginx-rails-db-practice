provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region = var.region
}

resource "aws_instance" "example" {
  ami = var.images.ap-northeast-1
  instance_type = "t2.micro"

  tags = {
    Name = "example2222"
  }

  user_data = <<EOF
    #!/bin/bash
    yum install -y httpd
    systemctl start httpd.service
EOF
}

