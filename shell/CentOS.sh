#!/bin/sh
# 更新yum
  yum update
# 安装GIT
  yum install git
# 安装Docker
  yum install docker
# 安装Docker-Compose依赖
  yum install python-pip
# 检测是否存在Docker-Compose包
  pip uninstall docker-compose
# 安装Docker-Compose
  pip install docker-compose
# 从GitHub拉取Docker自动构建Redis,MySQL,Nginx的库
  git clone https://github.com/Goular/DockerModule.git /drnmp

# 退出脚本
  exit 0