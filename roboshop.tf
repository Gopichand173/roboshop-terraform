provider "aws" {}

variable "instance_type"{
    default = "t3.small"
    }

variable "ami"{
    default = "ami-0220d79f3f480ecf5"
    }

variable "instances"{
    default = ["frontend","mongodb","catalogue","redis","user","cart","mysql","shipping","rabbitmq","payment","dispatch"]
    }
resource "aws_instance" "instance" {
    count = length(var.instances)
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = var.instances[count.index]
  }
}


