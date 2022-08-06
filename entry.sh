#!/usr/bin/env bash

mkdir -p /root/.ssh
echo ${authorized_keys} >> /root/.ssh/authorized_keys
chmod 600 /root/.ssh -R
top
