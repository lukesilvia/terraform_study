#/bin/bash

yum install -y ${package}
service start ${package}.service

