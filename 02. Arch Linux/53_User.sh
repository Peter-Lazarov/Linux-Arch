#!/bin/bash

# 0) Sudo
pacman -S --noconfirm sudo

# 1) Font (по желание)
pacman -S --noconfirm terminus-font
setfont ter-228n
echo "FONT=ter-228n" > /etc/vconsole.conf

# 2) Enable NetworkManager (вече инсталиран)
systemctl enable NetworkManager

# 3) User
useradd -m -G wheel peter

# 4) sudo for wheel group
sed -i 's/# %wheel ALL=(ALL:ALL) ALL/%wheel ALL=(ALL:ALL) ALL/' /etc/sudoers
