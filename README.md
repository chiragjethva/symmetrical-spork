# symmetrical-spork

Deploy service with AWS Fargate using terraform

## Directory layout

    .
    ├── scripts                            # scripts to run terraform & tests
    ├── terraform
      - aws                                # Terraform AWS infrastructure
    ├── tests                              # Infrastructure tests
    ├── Makefile                           # Set of tasks to execute
    └── README.md                          # Documentation

## Proposed Infrastructure Architecture

![design](design.jpg "Architecture")

* AWS Fargate
* AWS Application Load Balancer

The application load balancer should have an `/service` endpoint and `/__healthcheck__` health check endpoint.

If something is missing, feel free adding it to a solution.

## Objectives

The task objectives were as follows:

* Create infrastructure-as-code as per proposed Architecture
* Test Infrastructure (you can choose one or more test frameworks)
	* [Terraform BDD Testing](https://github.com/eerkunt/terraform-compliance)
	* [Terraform Unit Testing](https://github.com/bsnape/rspec-terraform)
	* [Terraform Ultimate Testing](https://github.com/bsnape/rspec-terraform)
* `Makefile` has all the commands requred to run/test
* Explain how to run and test in `README.md`
### INSTRUCTION

#### PREREQUISITE

-   Install terraform.(recommended version "Terraform v0.11.7") Terraform can be downloaded  [here](https://www.terraform.io/downloads.html)
-   Install AWS CLI.
 (On Ubuntu : ``` apt-get update``` and ``` apt-get install awscli ```) 
(On Centos/amazon linux : ```yum update ``` and ``` yum install awscli ```) 
## Deploy

TODO: Go to terraform ```main.tf``` file (```terraform/aws/ecs-infrastructure/main.tf```) and fill out the variable , replace(**"variable"**) with the respective values.
Then, follow the command of via script or directly launch the infra from absolute path.
**via script**
```
// To check terraform plan
$ sh scripts/test.sh
// To deploy terraform plan infrastructure
$ sh scripts/deploy.sh
// To destroy terraform infrastructure
$ sh scripts/destroy.sh
```
**from file absolute path**
```
// Go to terraform "main.tf" file's folder
$ cd terraform/aws/ecs-infrastructure/
// initialize terraform aws plugin
$ terraform init
// Check terrafrom plan
$ terraform plan
// Deploy the infrastructure
$ terrafrom apply
```
## Test the whole setup

TODO: Document how to test the setup

## Note

Please do not make pull requests. Fork/Clone the repo instead and work on it.

There is no need to deploy infrastructure to AWS. Just make sure it fully valid terraform infrastructure-as-code setup and it has sufficient level of tests.
