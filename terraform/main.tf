resource "aws_key_pair" "devportal_tf_key" {
	key_name = "devportal1"
	public_key = file("~/.ssh/devportal.pub")
}

resource "aws_security_group" "devportal_admin" {
	name = "devportal_admin"
	ingress {
		from_port = 22
		to_port = 22
		protocol = "tcp"
		cidr_blocks = ["0.0.0.0/0"]
	}
	ingress {
		from_port = 80
		to_port = 80
		protocol = "tcp"
		cidr_blocks = ["0.0.0.0/0"]
	}
	ingress {
		from_port = 443
		to_port = 443
		protocol = "tcp"
		cidr_blocks = ["0.0.0.0/0"]
	}
	egress {
		from_port = 0
		to_port = 0
		protocol = "-1"
		cidr_blocks = ["0.0.0.0/0"]
	}
}

resource "aws_instance" "devportal-instance" {
	for_each = var.instance_tags
	ami = "ami-0aa2b7722dc1b5612"
	instance_type = "t2.micro"
	vpc_security_group_ids = [aws_security_group.devportal_admin.id]
	key_name = aws_key_pair.devportal_tf_key.key_name
	tags = {
		Name = each.key
		Description = each.value
	}
user_data = data.cloudinit_config.server_config.rendered
	connection {
		type        = "ssh"
		user        = "ubuntu"
		private_key = file("~/.ssh/devportal.pem")
		host        = self.public_ip
	}
}

data "cloudinit_config" "server_config" {
  gzip          = false
  base64_encode = true
  part {
	content_type = "text/cloud-config"
	content      = file("./userdata/default.yml")
  }
}