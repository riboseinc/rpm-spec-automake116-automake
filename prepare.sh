#!/bin/bash

ln -sf "$PWD" /usr/local/rpm-specs/automake116-automake

. /usr/local/rpm-specs/setup_env.sh

yum -y install scl-utils-build

rpm --import https://github.com/riboseinc/yum/raw/master/ribose-packages.pub
curl -L https://github.com/riboseinc/yum/raw/master/ribose.repo > /etc/yum.repos.d/ribose.repo

yum -y install ribose-automake116-build ribose-automake116-runtime
build_package automake116-automake

