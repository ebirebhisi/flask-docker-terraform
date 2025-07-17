provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "flask_app" {
  ami           = "ami-051f8a213df8bc089" # Amazon Linux 2023 (update if needed)
  instance_type = "t2.micro"
  key_name      = "flask-key"             # Replace with your key if different

  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              amazon-linux-extras install docker -y
              service docker start
              usermod -a -G docker ec2-user
              docker run -d -p 80:80 ebirebhisimoren/flask-ui-app
              EOF

  tags = {
    Name = "FlaskDockerApp"
  }
}

