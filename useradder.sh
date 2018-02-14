#!/bin/bash

LOG_DIR=/opt/stack/
STACK_UID=1001


if [ "$UID" -ne "$STACK_UID" ]
then
  echo ""
  echo "  [ERROR]  You are not a stack user."
  echo "  Please login as stack. Below command will help you."
  echo "         sudo su - stack"
  echo ""
#exit 1
fi


# check number of parameters
if [ $# -ne 1 ]
then
  echo "Usage: ./`basename $0` name"
  exit 1
fi

# user create
openstack user create \
--domain Default \
--pssword $1 \
--enable \
$1

# project create
openstack project create \
--domain Default \
--enable \
$1

# quota set
openstack quota set \
--ram 51200 \
--instances 10 \
--floating-ips 20 \
--gigabytes 30 \
--cores 20 \
$1

# user add in Member
openstack role add \
--project $1 \
--user $1 \
Member

# admin add in Member
openstack role add \
--project $1 \
--user admin \
Member


echo "User $1 Created"
