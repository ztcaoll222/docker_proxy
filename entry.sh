#!/usr/bin/env bash

mkdir -p /root/.ssh
ssh-keygen -t rsa -P "" -f /etc/ssh/ssh_host_rsa_key
ssh-keygen -t ecdsa -P "" -f /etc/ssh/ssh_host_ecdsa_key
ssh-keygen -t ed25519 -P "" -f /etc/ssh/ssh_host_ed25519_key
echo -e "PasswordAuthentication no" >> /etc/ssh/sshd_config
echo ${authorized_keys} >> /root/.ssh/authorized_keys
chmod 600 /root/.ssh -R
/usr/sbin/sshd -p 22 -D
top
