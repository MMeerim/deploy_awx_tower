#!/bin/bash
yum update -y
amazon-linux-extras install epel -y
yum install git -y
amazon-linux-extras install docker
service docker start
usermod -a -G docker ec2-user
yum install -y  python3-pip
python3 -m pip install --user --upgrade pip
python3 -m pip install ansible
python3 -m pip install docker-compose
pip3 install docker
yum install -y python-devel 

cd /home/ec2-user/
git clone https://github.com/MMeerim/awx-tower.git 

cd /home/ec2-user/awx-tower/awx/installer/
ansible-playbook -i inventory install.yml