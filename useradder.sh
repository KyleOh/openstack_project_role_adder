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
  exit 1
fi

