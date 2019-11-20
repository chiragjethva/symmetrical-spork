# Project wide variable
variable "PROJECT_NAME" {}
# Varibles for the Providers
variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {}


# VPC Variables
variable "VPC_CIDR_BLOCK" {}
variable "VPC_PUBLIC_SUBNET1_CIDR_BLOCK" {}
variable "VPC_PUBLIC_SUBNET2_CIDR_BLOCK" {}
variable "VPC_PRIVATE_SUBNET1_CIDR_BLOCK" {}
variable "VPC_PRIVATE_SUBNET2_CIDR_BLOCK" {}

# ECS variable
variable  "fargate_cpu" {}                           
variable  "fargate_memory" {}                        
variable  "app_image" {}                             
variable  "app_port"  {}                            
variable  "app_count" {}   

# ALB variable
variable  "path1" {}
variable  "path2" {}
variable  "healthcheckport" {}
                         
