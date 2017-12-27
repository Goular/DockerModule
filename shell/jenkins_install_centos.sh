#!/bin/sh
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
yum install jenkins -y
service jenkins restart

# 执行完成需要将jenkins添加到root组，不然docker不能使用
