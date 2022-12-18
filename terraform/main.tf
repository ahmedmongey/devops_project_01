resource "aws_instance" "Devops-Work-EC2" {
  ami           = "ami-0b5eea76982371e91"
  instance_type = "t3.micro"
  key_name      = "mykey"
  security_groups = ["${aws_security_group.Devops-security_group.name}"]

  tags  = {
    Name  = "launch Ec2 by terraform"
  }
}