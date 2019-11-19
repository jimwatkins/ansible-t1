#!/bin/bash

# Connect to a host and add an ssh key to a user
# parms: host, user, pk to add

KEY=$1
SSHUSER=$2
SSHHOST=$3


cat ${KEY} | ssh ${SSHUSER}@${SSHHOST} "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys"

# cat ~/.ssh/id_rsa.pub | ssh user@192.168.1.1 "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys"

# connect to client
