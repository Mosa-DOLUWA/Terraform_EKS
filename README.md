# Create Apache Webserver in AWS Using Terraform
## Installation of required AWS packages
- Install [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/installing.html)
- Configure [AWS CLI](https://docs.aws.amazon.com/cli/latest/reference/configure/)
- Please note, Configuring AWS using `aws configure` CLI command, will write the AWS secret and access key to `~/$USER_HOME/.aws/credentials` file and it will used to authenticate the terraform infra creation in AWS.

##  Install and Configure Terraform
- Refer here [for installing terraform](https://www.terraform.io/downloads.html)
- Extract and Add `terraform` executable path to ENV variables

## Terraform setup in Linux based systems
```
wget https://releases.hashicorp.com/terraform/0.12.24/terraform_0.12.24_linux_amd64.zip
unzip terraform_0.12.24_linux_amd64.zip -d terraform /usr/local/bin/
```
If terraform executable stored in another path, make sure the path is added in `$PATH` variable permanently.
