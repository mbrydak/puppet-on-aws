#!/bin/cloud-config
#!/bin/env bash

# install puppet server

sudo yum install -y https://yum.puppet.com/puppet7-release-el-7.noarch.rpm

sudo yum install -y puppetserver

# start puppet server

sudo systemctl enable --now puppetserver

# configure firewall

# sudo firewall-cmd --permanent --zone=public --add-port=8140/tcp

# sudo firewall-cmd --reload

# check puppet server status

# sudo systemctl status puppetserver

# check puppet server version

sudo puppetserver --version

# configure puppet server

# sudo sed -i 's/2g/4g/g' /etc/sysconfig/puppetserver
