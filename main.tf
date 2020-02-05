provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami                    = "ami-02ccb28830b645a41" # replace with your AWS account ami id
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-dbff70bc"] # replace with aws account sg

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install httpd mod_ssl
              service httpd start
              chkconfig httpd on
              cd /var/www/html
              echo "Automation for the People" > index.html
              EOF

  tags = {
    Name = "elephant-webserver"
  }
}
