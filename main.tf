terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "5.74.0"
        }
    }
}

provider "aws"{
    #Confguration options
    region = "us-east-1"

}

#S3 Bucket

resource "aws_s3_bucket" "static_website_bucket" {
    bucket = "aidantaggart.com"

     tags = {
        name = "Static Website Bucket"
        ProvisionedBy = "Terraform"
        Environment = "Prod"
        Project = "Cloud Resume Challenge"
    }
}

/*
resource "aws_instance" "this" {
    ami              = "ami-0ddc798b3f1a5117e"
    instance_type    = "t2.micro"
    count            = 2

    tags = {
        name = "EC2 Terraform Instance"
        ProvisionedBy = "Terraform"
        Environment = "Cloud Resume Challenge"
    }
}
*/

#S3 Bucket
/*
resource "aws_s3_bucket" "test_static_website_bucket" {
    bucket = "test-website-static-bucket-aidan-taggart"

     tags = {
        name = " Test Static Website Bucket"
        ProvisionedBy = "Terraform"
        Environment = "Prod"
        Project = "Cloud Resume Challenge"
    }
}
*/
/*
resource "aws_S3_bucket_public_access_block" "static_website_bucket" {
    bucket = aws_s3_bucket.static_website_bucket.bucket

    block_public_acls = false
    block_public_policy = false
    ignore_public_acls = false
    restrict_public_buckets = false
}
*/

/*
# Add a bucket policy to allow public access to the objects inside the S3 bucket
resource "aws_s3_bucket_policy" "test_static_website_bucket_policy" {
bucket = aws_s3_bucket.test_static_website_bucket.id  
# Attach policy to the previously defined bucket
policy = jsonencode({ 
     # JSON-encoded policy allowing public read access to the bucket's objects  
     Version = "2012-10-17"  
     Statement = [    
        {      
            Effect    = "Allow"              # Allow action  
            Principal = "*"                  # Any user (public)      
            Action    = "s3:GetObject"       # Permission to get objects from the bucket      
            Resource  = "${aws_s3_bucket.test_static_website_bucket.arn}/*"  # Grant access to all objects in the bucket    
        }  
        ]
    })
}
*/
/*
resource "aws_s3_bucket_policy" "test_static_website_bucket_policy" {
    bucket = aws_s3_bucket.test_static_website_bucket.id

    policy = jsonencode({
        Version = "2012-10-17",
        Statement = [
            {
                Effect = "Allow",
                Principal = "*",
                Action = "s3:GetObject",
                Resource = "${aws_s3_bucket.test_static_website_bucket.arn}/*"
            }
        ]
    })
}
*/
/*
# Configure the bucket to act as a static website
resource "aws_s3_bucket_website_configuration" "test_static_website" {  
    bucket = aws_s3_bucket.test_static_website_bucket.id  
    index_document {    suffix = "index.html"  }} 
*/
