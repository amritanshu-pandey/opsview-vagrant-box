#!/bin/bash
set -eu

sudo yum update -y
sudo yum install curl wget iptoute net-tools selinux-policy openssh-clients -y

## Install Opsview
curl -sLo- https://deploy.opsview.com/6 | sudo bash -s -- -p PASSWORD -y -d
