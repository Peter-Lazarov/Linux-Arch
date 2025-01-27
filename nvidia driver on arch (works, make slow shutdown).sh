# way 1
sudo pacman -R nouveau
sudo pacman -S nvidia nvidia-utils
sudo nvidia-xconfig
sudo reboot


GRUB_CMDLINE_LINUX_DEFAULT="nvidia.NVreg_PreserveVideoMemoryAllocations=1 nvidia.NVreg_EnableGpuFirmware=0"
sudo grub-mkconfig -o /boot/grub/grub.cfg
sudo reboot

nvidia-smi



# way 2
sudo pacman -Syu
sudo pacman -S nvidia nvidia-utils lib32-nvidia-utils

# for 32 bit applications
# sudo pacman -S lib32-vulkan-icd-loader

sudo pacman -S mkinitcpio
sudo mkinitcpio -P

sudo reboot



nvidia-smi

watch -n 1 nvidia-smi
