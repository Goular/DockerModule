#!/bin/bash

yum install -y wget
wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" -c http://download.oracle.com/otn-pub/java/jdk/8u152-b16/aa0333dd3019491ca4f6ddbe78cdb6d0/jdk-8u152-linux-x64.tar.gz -O jdk-8u152-linux-x64.tar.gz
tar -zxvf jdk-8u152-linux-x64.tar.gz 
rm -rf jdk-8u152-linux-x64.tar.gz
rm -rf /usr/local/java
mv jdk1.8.0_152/ jdk
mkdir -p /usr/local/java/
mv jdk /usr/local/java/
cat >> /etc/profile << EOF
export JAVA_HOME=/usr/local/java/jdk
export PATH=$JAVA_HOME/bin:$PATH
export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
export JRE_HOME=$JAVA_HOME/jre
EOF
# 下面的语句shell无反应，需要手动终端执行，才有反应，执行下面语句后javac才有反应
# source /etc/profile
