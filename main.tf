resource "aws_instance" "ec2_instance" {
  ami                    = var.AWS_AMI_ID
  instance_type          = var.AWS_INSTANCE_TYPE
  key_name               = var.AWS_KEY_NAME
  vpc_security_group_ids = [var.AWS_VPC_SECURITY_GROUP]
subnet_id                  = var.AWS_SUBNET_ID
 
tags = {
Name = "sample-ec2-instance"
}
}