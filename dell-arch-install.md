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

## partition, format, mount
```bash
parted -a optimal /dev/nvme0n1 mktable gpt && \
parted -a optimal /dev/nvme0n1 mkpart ESP fat32 1MiB 513MiB && \
parted -a optimal /dev/nvme0n1 set 1 boot on && \
parted -a optimal /dev/nvme0n1 name 1 boot && \
parted -a optimal /dev/nvme0n1 mkpart primary 513MiB 41GiB && \
parted -a optimal /dev/nvme0n1 name 2 root && \
parted -a optimal /dev/nvme0n1 mkpart primary 41GiB 60GiB && \
parted -a optimal /dev/nvme0n1 name 3 home && \
parted -a optimal /dev/nvme0n1 mkpart primary 60GiB -1 && \
parted -a optimal /dev/nvme0n1 name 4 store && \
mkfs.fat -F32 /dev/nvme0n1p1 && \
mkfs.ext4 /dev/nvme0n1p2 && mkfs.ext4 /dev/nvme0n1p3 && mkfs.ext4 /dev/nvme0n1p4 && \
mount /dev/nvme0n1p2 /mnt && \
mkdir /mnt/boot && mkdir /mnt/home && \
mount /dev/nvme0n1p1 /mnt/boot/ && mount /dev/nvme0n1p3 /mnt/home/
```

## Install base, change shell
```bash
pacstrap /mnt base openssh zsh git dhcp grub sudo base-devel vim iw wpa_supplicant dialog dhcpd i3 clipmenu rofi curl udiskie \
libinput networkmanager networkmanager-openconnect networkmanager-openvpn networkmanager-pptp networkmanager-vpnc \
lightdm lightdm-gtk-greeter gnome-keyring htop libva-intel-driver acpi alsa-tools tlp zip p7zip clipnotify lightdm-gtk-greeter-settings \
lxappearance ncdu arandr xrandr dunst \
chromium xorg-server alsa-utils xorg-fonts-100dpi ttf-bitstream-vera freetype2 xorg-fonts-type1 network-manager-applet && \
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh && \
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc && \
chsh -s /bin/zsh
```
## generate fstab and change root
```bash
genfstab -Up /mnt >> /mnt/etc/fstab && arch-chroot /mnt
```
## Change root
```bash
arch-chroot /mnt
```
## Enable services
```bash
systemctl enable lightdm.service && systemctl enable sshd.service
```
## Enable wheel group
```bash
echo "%wheel ALL=(ALL) ALL" >> /etc/sudoers
```

## Hostname and time
```bash
echo base-arch > /etc/hostname && ln -sf /usr/share/zoneinfo/Europe/Sofia /etc/localtime
```

## Locales:
```bash
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen && echo "LANG=en_US.UTF-8" >> /etc/locale.conf && echo "LC_COLLATE=C" >> /etc/locale.conf && echo "LC_TIME=en_US.UTF-8" >> /etc/locale.conf && echo "LC_MESSAGES=C" >> /etc/locale.conf && locale-gen
```
## boot
```bash
mkinitcpio -p linux && bootctl install
```

## create and edit /boot/loader/entries/arch.conf and add following where sda2 is current root partition
```bash
title          Arch Linux
linux          /vmlinuz-linux
initrd         /initramfs-linux.img
options        root=/dev/sda2 rw

#Modify /boot/loader/loader.conf to select the default entry
timeout 3
default arch
```
## set root passwd
## add some user
```bash
useradd -m -d /home/usr -G wheel -s /bin/zsh usr
```
