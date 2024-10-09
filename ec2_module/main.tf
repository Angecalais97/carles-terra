# EC2 Instance Configuration
resource "aws_instance" "carles" {
  ami           = var.ami # Example Amazon Linux 2 AMI ID
  instance_type = var.instance_type

  tags = {
    Name = "carles"
  }
}

# Backend Configuration for State Management and Locking
terraform {
  backend "s3" {
    bucket         = "carles-catch-up"                 # Replace with your S3 bucket name
    key            = "ec2_module/s7/terraform.tfstate" # Name for the state file
    region         = "us-east-1"
    dynamodb_table = "catch-up-lock" # Replace with your DynamoDB table name
    encrypt        = true            # Encryption for security
  }
}
