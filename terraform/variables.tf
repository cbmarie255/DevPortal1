variable "aws_region" {
  description = "AWS region(N.Virginia)"
  default     = "us-east-1"
}

variable "instance_tags" {
	type = map(string)
	default = {
		DevPortal = "Static site for DevOps resources"
		Docker = "Pre-loaded container with all required tools and repo for further development"
        GitHub_Actions = "Agent machine for testing the build and deployment processes"
	}
}