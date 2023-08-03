resource "aws_security_group" "terraform-cloud-shishir-group" {

  name        = terraform-cloud-shishir-group
  description = "sg group for EC2 instance"
  vpc_id      = data.terraform_remote_state.vpc.outputs.vpc_id

  ingress {

    description = "allow ssh for port 22"
    from_port   = 22
    to_port     = 22
    protocol    = tcp
    cidr_blocks  = ["0.0.0.0/0"]

  }

  ingress {

    description = "allow http port 80"
    from_port   = 80
    to_port     = 80
    protocol    = tcp
    cidr_blocks  = ["0.0.0.0/0"]

  }

  egress {

    description = "outbound all allow"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks  = ["0.0.0.0/0"]

  }

}

