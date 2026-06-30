#!/bin/bash

# Format root
mkfs.ext4 /dev/nvme0n1p5

# Format home
mkfs.ext4 /dev/nvme0n1p6

# Format swap
mkswap /dev/nvme0n1p7

# Format EFI
mkfs.fat -F32 /dev/nvme0n1p1
