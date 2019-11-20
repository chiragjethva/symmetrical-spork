############### To check infrastructure plan #################

#!/bin/bash

################# path to main terraform template#############

cd ./terraform/aws/ecs-infrastructure

#################initialize the terraform plugin for terraform#

terraform init

################ check infrastructure plan ####################

terraform plan
