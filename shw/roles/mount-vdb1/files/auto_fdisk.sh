#!/bin/bash

# Author: Vtrois <seaton@vtrois.com>
# Project URL: https://www.vtrois.com
# Description: Auto fdisk for SpacePack Tools
# Github URL: https://github.com/Vtrois/Auto-fdisk

printf "
===========================================================================
                                Auto fdisk
      SpacePack tools for CentOS, CoreOS, Debian, openSUSE and Ubuntu
   For more information please visit https://github.com/Vtrois/Auto-fdisk
===========================================================================
"
Disk=/dev/vdb1
fdisk_mkfs() {
fdisk /dev/vdb << EOF
n
p
1


wq
EOF

sleep 2
mkfs -t ext4  /dev/vdb1
}
fdisk_mkfs $Disk > /dev/null 2>&1
cat /etc/fstab
