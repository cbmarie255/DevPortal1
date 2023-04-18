# output "instance-info" {
# 	value = [for instance in aws_instance.devportal-instance: {
# 		public_dns = instance.public_dns
# 		public_ip = instance.public_ip
# 		tags = instance.tags
# 	}]
# }

# data "aws_instances" "DevPortal" {
# 	filter {
# 		name = "tag:Name"
# 		values = ["DevPortal"]
# 	}
# }

# output "GitHub_Actions" {
# 	value = data.aws_instances.GitHub_Actions.public_ips[0]
# }

# data "aws_instances" "Docker" {
# 	filter {
# 		name = "tag:Name"
# 		values = ["Docker"]
# 	}
# }
