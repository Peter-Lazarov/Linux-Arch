#!/bin/bash

# Mount root
mount /dev/nvme0n1p5 /mnt

# Mount home
mkdir -p /mnt/home
mount /dev/nvme0n1p6 /mnt/home

# Enable swap
swapon /dev/nvme0n1p7

# Mount EFI
mkdir -p /mnt/boot
mount /dev/nvme0n1p1 /mnt/boot

# Show result
lsblk
