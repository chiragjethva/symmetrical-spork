#####
#########
############## Create VPC #####################################
module "ecs_vpc" {
  source	  = "../module/ecs"
  VPC_CIDR_BLOCK                        = "variable"                      ####example "10.0.0.0/16"############################
  VPC_PUBLIC_SUBNET1_CIDR_BLOCK         = "variable"                      ####example "10.0.1.0/24"############################
  VPC_PUBLIC_SUBNET2_CIDR_BLOCK         = "variable"                      ####example "10.0.2.0/24"############################
  VPC_PRIVATE_SUBNET1_CIDR_BLOCK        = "variable"                      ####example "10.0.3.0/24"############################
  VPC_PRIVATE_SUBNET2_CIDR_BLOCK        = "variable"                      ####example "10.0.4.0/24"############################
  PROJECT_NAME                          = "variable"                      ####example "ecs"####################################
  AWS_ACCESS_KEY                        = "variable"                      ####example "AKIxxxxxxxxxx7F"########################
  AWS_SECRET_KEY                        = "variable"                      ####example "+EEg8fXXXXXXXXXXXXXXXX0Gx1b4riz"########
  AWS_REGION                            = "variable"                      ####example "us-east-2"##############################
  fargate_cpu				= "variable"		          ####example "256" ###################################
  fargate_memory			= "variable"                      ####example "512" ###################################
  app_image				= "variable"			  ####example "nginx"##################################
  app_port				= "variable"			  ####example "80" ####################################
  app_count				= "variable"			  ####example "1" #####################################
  path1					= "/service"			  ####example "/service"### **its the lister path**####
  path2					= "/__healthcheck__"              ####example "/__healthcheck__" ##**its the target group path**####
  healthcheckport			= "variable"                      ####example "80" ####################################
}

