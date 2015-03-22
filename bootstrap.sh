#!/usr/bin/env bash

# Exit if already bootstrap.sh was executed
echo "#####  bootstrap.sh is running  #####"

if test -f /etc/bootstrapped; then
  echo "#####  bootstrap.sh is finished  #####"
  exit
fi

# Install ChefDK
rpm -ivh https://opscode-omnibus-packages.s3.amazonaws.com/el/6/x86_64/chefdk-0.3.0-1.x86_64.rpm

date > /etc/bootstrapped
echo "##### bootstrap.sh is finished  #####"
