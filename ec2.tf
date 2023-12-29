data "aws_ami" "required-ami" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["al2023-ami-2023*"]
  }
  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}

resource "aws_instance" "webserver" {
  ami = data.aws_ami.required-ami.id
  instance_type = var.instance_type
  tags = var.tags
  vpc_security_group_ids = var.sg
}