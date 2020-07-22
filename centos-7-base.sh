#!/bin/bash

echo 'RES_OPTIONS="single-request-reopen"' >> /etc/sysconfig/network
sed -i 's/^#\?UseDNS .*/UseDNS no/' /etc/ssh/sshd_config
sed -i 's/^#\?GSSAPIAuthentication .*/GSSAPIAuthentication no/' /etc/ssh/sshd_config

rm -f /etc/ssh/*key*
find /var/log -type f -exec truncate --size=0 {} \
truncate --size=0 /etc/machine-id

dd if=/dev/zero of=/boot/ZERO bs=1M || echo "ignoring expected dd error"
rm /boot/ZERO
dd if=/dev/zero of=/ZERO bs=1M  || echo "ignoring expected dd error"
rm /ZERO
sync

export HISTSIZE=0
rm -f /root/.wget-hsts
