############### To Destroy infrastructure plan #################

#!/bin/bash

################# path to main terraform template ##############

cd ./terraform/aws/ecs-infrastructure

################ Destroy infrastructure  #######################

terraform destroy
