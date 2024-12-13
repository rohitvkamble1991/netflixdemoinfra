provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 5
ami = "ami-0166fe664262f664c"
instance_type = "t2.medium"
key_name = "rahull"
vpc_security_group_ids = ["sg-03b95f08655126317"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "nexus", "tomcat-1", "tomcat-2", "Monitoring server"]
}
