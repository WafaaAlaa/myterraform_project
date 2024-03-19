Terraform AWS Project


This is a Terraform Project that builds a solution on AWS.
It includes modules for creating a VPC with public subnet and private subnet, launching EC2 instances in the public subnets, Create s3 bucket, DynamoDB tables AWS Architecture 

Prerequisites

Before running the deployment script, you will need to have the following: 
• AWS account 
• Terraform installed on your local machine 
• AWS CLI installed on your local machine 
• AWS credentials configured on your local machine
• A S3 bucket to store the Terraform state file.


Getting Started

Initialize Terraform:
#terraform init



review and check desire state
#terraform plan


Deploy the infrastructure:
#terraform apply


#terraform apply--auto-approve(apply with automatic)




