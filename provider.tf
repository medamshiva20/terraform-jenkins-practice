terraform{
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "5.15.0"
        }
    }
backend "s3"{

    bucket ="remote-devops-state"
    key = "vpc"
    region = "us-east-1"
    dynamodb_table = "roboshop-remote-lock" 
   }
}

provider "aws" {
  #Configuration options
  #You can give access key and secret key here, But security problem
  region = "us-east-1"
}