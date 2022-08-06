#!/usr/bin/env bash

echo ${authorized_keys} >> /root/.ssh/authorized_keys
chmod 600 /root/.ssh/authorized_keys
