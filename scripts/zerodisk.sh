#!/bin/bash

VIRT=$(facter virtual)

if [[ "$VIRT" != "vmware" ]] || [[ "$VIRT" != "virtualbox" ]]; then
    exit 0
fi

# Zero out the free space to save space in the final image:
dd if=/dev/zero of=/EMPTY bs=1M
rm -f /EMPTY

# Sync to ensure that the delete completes before this moves on.
sync
sync
sync
