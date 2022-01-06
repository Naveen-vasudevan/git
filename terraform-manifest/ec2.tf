


module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  for_each = toset(["001", "003"])

  name = "VALPRO${each.key}"

  ami                    = "ami-052cef05d01020f1d"
  instance_type          = "t2.micro"
  #key_name               = "user1"
  #monitoring             = true
  #vpc_security_group_ids = ["sg-12345678"]
  #subnet_id              = "subnet-eddcdzz4"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
