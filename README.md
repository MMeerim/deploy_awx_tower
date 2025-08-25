# AWX Deployment on AWS EC2

This Terraform project deploys AWX (Ansible Tower) on an AWS EC2 instance. AWX runs inside a Docker container and provides a web interface to manage and run Ansible playbooks.

---

## Overview
- Deploys an EC2 instance (t2.medium) running Docker.
- Installs and configures AWX for automation management.
- Demonstrates Infrastructure as Code (IaC) with Terraform.
- Follows security best practices (no hardcoded credentials, placeholder values used).

---

## Prerequisites
- Terraform installed
- AWS CLI installed and configured
- Knowledge of AWS, Terraform, Docker, and Ansible

---

## Setup & Deployment

1. Clone the repo:
bash
https://github.com/MMeerim/deploy_awx_tower.git
cd <repo-name>

2. Set AWS credentials as environment variables (example placeholders only):
export AWS_ACCESS_KEY_ID="FAKEKEY123456"
export AWS_SECRET_ACCESS_KEY="FAKESECRET123456"

3. Initialise Terraform and apply configuration:
terraform init
terraform apply --var-file=values.tfvars --auto-approve

4. Access AWX
After deployment, find the EC2 public IP:
terraform output awx_public_ip

Default login credentials (placeholders — change immediately):
  Username: admin
  Password: CHANGE_ME
---
Open in a browser:
http://<EC2_PUBLIC_IP>:80

Notes & Best Practices
1. Never commit real credentials; always use environment variables or .env files.
2. Change default AWX password after first login.
3. For production: enable HTTPS, secure EC2 security groups, and IAM roles.

References
AWX Project - https://github.com/ansible/awx 
Terraform AWS Provider - https://registry.terraform.io/providers/hashicorp/aws/latest/docs 
Docker - https://www.docker.com/

