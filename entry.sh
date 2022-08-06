#!/usr/bin/env bash

mkdir -p /root/.ssh
echo ${authorized_keys} >> /root/.ssh/authorized_keys
chmod 600 /root/.ssh -R
echo -e "Port 22\n" >> /etc/ssh/sshd_config
echo -e "PermitRootLogin yes\n" >> /etc/ssh/sshd_config
top
