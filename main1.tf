module "vpc-practice" {
  source  = "app.terraform.io/git_practice_ec2/vpc-practice/aws"
  version = "1.0.0"
  # insert required variables here
  vpc_cidr = var.vpc_cidr
  subnet_cidr = var.subnet_cidr
  available_zone = var.available_zone
  
}

module "instance-practice" {
  source  = "app.terraform.io/git_practice_ec2/instance-practice/aws"
  version = "1.0.0"
  # insert required variables here
  ami = var.ami
  instance_type = var.instance_type
  
}
