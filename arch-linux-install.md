# Arch linux install

## set root password
```bash
passwd
```

## enable wireless
```bash
iw dev
wifi-menu -o <device>
```

## start sshd
```bash
systemctl start sshd.service
```

## partitioning and format
```bash
parted -a optimal /dev/sda mktable gpt && \
parted -a optimal /dev/sda mkpart primary 1MiB 3MiB && \
parted -a optimal /dev/sda set 1 bios_grub on && \
parted -a optimal /dev/sda name 1 bios_grub && \
parted -a optimal /dev/sda mkpart primary 3MiB 600MiB && \
parted -a optimal /dev/sda name 2 boot && \
parted -a optimal /dev/sda mkpart primary 600Mib 65GiB && \
parted -a optimal /dev/sda name 3 root && \
parted -a optimal /dev/sda mkpart primary 65GiB 75GiB && \
parted -a optimal /dev/sda name 4 home && \
parted -a optimal /dev/sda mkpart primary 75GiB 100% && \
parted -a optimal /dev/sda name 5 store && \
mkfs.ext4 /dev/sda2 && mkfs.ext4 /dev/sda3 && mkfs.ext4 /dev/sda4 && mkfs.ext4 /dev/sda5 && \
mount /dev/sda3 /mnt && \
mkdir /mnt/boot && mkdir /mnt/home && mkdir /mnt/Store && \
mount /dev/sda2 /mnt/boot/ && mount /dev/sda4 /mnt/home/ && mount /dev/sda5 /mnt/Store/
```

## install base
```bash
pacstrap /mnt base linux linux-firmware openssh zsh dhcp grub sudo vim iw wpa_supplicant dialog curl libinput networkmanager lightdm lightdm-gtk-greeter acpi alsa-tools arandr xorg-xrandr xorg-server alsa-utils network-manager-applet intel-ucode
```

## generate fstab and change root
```bash
genfstab -U /mnt >> /mnt/etc/fstab
```
## Change root
```bash
arch-chroot /mnt
```
## Enable services
```bash
systemctl enable sshd.service
```
## Enable wheel group
```bash
echo "%wheel ALL=(ALL) ALL" >> /etc/sudoers
```

## Hostname and time
```bash
echo asq-s0ny > /etc/hostname && ln -sf /usr/share/zoneinfo/Europe/Sofia /etc/localtime
```

## Locales:
```bash
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen && echo "LANG=en_US.UTF-8" >> /etc/locale.conf && echo "LC_COLLATE=C" >> /etc/locale.conf && echo "LC_TIME=en_US.UTF-8" >> /etc/locale.conf && echo "LC_MESSAGES=C" >> /etc/locale.conf && locale-gen
```

## Boot
```bash
mkinitcpio -P && grub-install --target=i386-pc /dev/sda && grub-mkconfig -o /boot/grub/grub.cfg
```

## set root passwd
- `passwd`

## Clean
```bash
umount /mnt/Store && umount /mnt/home && umount /mnt/boot && umount /mnt
```

## Reboot

## add some user
```bash
useradd -m -d /home/usr -G wheel -s /bin/zsh usr
```

## Support tools
```bash
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh && \
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc && \
chsh -s /bin/zsh
```
