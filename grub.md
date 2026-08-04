# Grand Unified Bootloader - GRUB

# 1. Търсим колко GRUB инсталации имаме
### Показва всички конфигурации — EFI, /boot, fallback, стари инсталации.
```bash
sudo find / -type f -name "grub.cfg" 2>/dev/null
```

### Намери всички GRUB директории
```bash
sudo find / -type d -name "grub" 2>/dev/null
```

### Показва всички .efi файлове, които могат да бъдат зареждани от UEFI.
```bash
sudo find / -type f -name "grub*.efi" 2>/dev/null
```

### Това показва кой GRUB се зарежда реално при boot.
```bash
sudo efibootmgr -v
```

# 2. Трием излишната инсталация
### Показва къде е монтиран EFI дялът в работещата система:
```bash
lsblk -f
```

### В моят случей този беше излишен и го изтрих с
```bash
sudo rm -r /efi/grub
```

# 3. Инсталираме нов GRUB
### Инсталираме към /efi дяла
```bash
lsblk -f
NAME        MAJ:MIN RM   SIZE RO TYPE MOUNTPOINTS
nvme0n1     259:0    0 238.5G  0 disk 
├─nvme0n1p1 259:1    0   200M  0 part /efi
├─nvme0n1p2 259:2    0    16M  0 part 
├─nvme0n1p3 259:3    0 106.4G  0 part 
├─nvme0n1p4 259:4    0   796M  0 part 
├─nvme0n1p5 259:5    0    60G  0 part /
├─nvme0n1p6 259:6    0  63.1G  0 part /home
└─nvme0n1p7 259:7    0     8G  0 part [SWAP]
```

```bash
# В моят случей този е необходимият
sudo grub-install --target=x86_64-efi --efi-directory=/efi --bootloader-id=GRUB
```

```bash
sudo grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB
```

```bash
sudo nano /etc/default/grub
# разкоментираме този ред
#GRUB_DISABLE_OS_PROBER=false
```

### Генерираме grub.cfg
```bash
sudo grub-mkconfig -o /boot/grub/grub.cfg
```
