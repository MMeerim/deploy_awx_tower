provider "aws" {
    access_key = ""
    secret_key = ""
    region = "us-east-2"
}

#resourse "provider_resourcename" "name"

resource "aws_instance" "myinstance1" {
    ami = "ami-ami-0a0ad6b70e61be944"
    instance_type = "t2.micro"
    tags = {
        "Name" = "My app"
        "Env"  = "Dev"

    }
}

resource "aws_security_group" "mySG" {
  name        = "mySG"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  }