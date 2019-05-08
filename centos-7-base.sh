#!/bin/bash

rm -f /etc/ssh/*key*

dd if=/dev/zero of=/boot/ZERO bs=1M
rm /boot/ZERO
dd if=/dev/zero of=/ZERO bs=1M
rm /ZERO
sync
