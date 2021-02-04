# terraform_aws
This terraform code deploys AWX Ansible Tower on EC2.
AWX will run on docker container.
Please note that you will be running ec2_type "t2.medium".
Once you apply, you should be able to login to AWX using username: "admin", password "password".

export AWS_ACCESS_KEY_ID=
export AWX_SECRET_ACCESS_KEY=
terraform apply --var-file=values.tfvars --auto-approve


