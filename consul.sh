#!/bin/sh
sudo yum update -y
yum install -y docker
usermod -a -G docker ec2-user
service docker start
chkconfig docker on

curl -O https://releases.hashicorp.com/consul/0.8.5/consul_0.8.5_linux_amd64.zip
unzip consul_0.8.5_linux_amd64.zip
rm -f consul_0.8.5_linux_amd64.zip
mv consul /usr/local/bin