#!/bin/bash

# Инсталиране на Arch Linux
pacstrap /mnt \
    base \
    linux \
    linux-headers \
    linux-firmware

# Неща за мрежа, аудио, EC, ACPI
pacstrap /mnt \
    networkmanager \
    iwd \
    dhcpcd \
    sof-firmware

# Неща за звук, bluetooth, енергоспестяване
pacstrap /mnt \
    pipewire \
    pipewire-alsa \
    pipewire-pulse \
    wireplumber \
    bluez \
    bluez-utils \
    tlp \
    tlp-rdw


# Автоматично монтиране на дисковете след инсталацията
# Чете какво си mount-нал в /mnt
# Взима UUID-ите на дяловете
# Пише ги в /mnt/etc/fstab
genfstab -U /mnt >> /mnt/etc/fstab

    # за проверка
    cat /mnt/etc/fstab
