# Arch linux install

## set root password
```bash
passwd
```

## enable wireless
```bash
iwctl ....
```

## start sshd
```bash
systemctl start sshd.service
```

## partitioning and format
```bash
parted -a optimal /dev/nvme0n1 mktable gpt && \
parted -a optimal /dev/nvme0n1 mkpart primary 1MiB 512MiB && \
parted -a optimal /dev/nvme0n1 name 1 boot && \
parted -a optimal /dev/nvme0n1 set 1 esp on && \
parted -a optimal /dev/nvme0n1 mkpart primary 512MiB 50GiB && \
parted -a optimal /dev/nvme0n1 name 2 root && \
parted -a optimal /dev/nvme0n1 mkpart primary 50GiB 75GiB && \
parted -a optimal /dev/nvme0n1 name 3 zetxx && \
parted -a optimal /dev/nvme0n1 mkpart primary 75GiB 100% && \
parted -a optimal /dev/nvme0n1 name 4 store && \
mkfs.fat -F32 /dev/nvme0n1p1 && \
mkfs.ext4 /dev/nvme0n1p2 && \
mkfs.ext4 /dev/nvme0n1p3 && \
mkfs.ext4 /dev/nvme0n1p4 && \
mount /dev/nvme0n1p2 /mnt && \
mkdir /mnt/boot && mkdir /mnt/home && mkdir /mnt/Store && \
mount /dev/nvme0n1p1 /mnt/boot/ && mount /dev/nvme0n1p4 /mnt/Store/
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

## KDE plasma

```bash
sudo pacman -S plasma-meta plasma-wayland-session kde-applications
```
