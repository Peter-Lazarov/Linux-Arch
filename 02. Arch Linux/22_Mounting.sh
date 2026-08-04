#!/bin/bash

# /home
mkdir /mnt/home
mount /dev/nvme0n1p6 /mnt/home

# Swap
swapon /dev/nvme0n1p7

# EFI
mkdir -p /mnt/boot/efi
mount /dev/nvme0n1p1 /mnt/boot/efi

# за проверка
lsblk

