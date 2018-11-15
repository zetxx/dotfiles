# Arch linux install
## set root password
```bash
passwd
```
## start sshd
```bash
systemctl start sshd.service
```
## partitioning and format
```bash
parted -a optimal /dev/sda mktable gpt && \
parted -a optimal /dev/sda mkpart primary 1 3 && \
parted -a optimal /dev/sda name 1 grub && \
parted -a optimal /dev/sda set 1 bios_grub on && \
parted -a optimal /dev/sda mkpart primary 3 2051 && \
parted -a optimal /dev/sda name 2 boot && \
parted -a optimal /dev/sda mkpart primary 2051 11000 && \
parted -a optimal /dev/sda name 3 root && \
parted -a optimal /dev/sda mkpart primary 11000 21000 && \
parted -a optimal /dev/sda name 4 home && \
mkfs.ext4 /dev/sda2 && mkfs.ext4 /dev/sda3 && mkfs.ext4 /dev/sda4
```

## mount partitions
```bash
mount /dev/sda3 /mnt && mkdir /mnt/boot && mkdir /mnt/home && mount /dev/sda2 /mnt/boot/ && mount /dev/sda4 /mnt/home/
```
## install base
```bash
pacstrap /mnt base openssh zsh git dhcp grub sudo base-devel vim curl && git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh && cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc && chsh -s /bin/zsh
```

## generate fstab and change root
```bash
genfstab -Up /mnt >> /mnt/etc/fstab && arch-chroot /mnt
```
## Hostname and time
```bash
echo base-arch > /etc/hostname && ln -sf /usr/share/zoneinfo/Europe/Sofia /etc/localtime
```
## install Desktop env
```bash
pacman -S xfce4 xfce4-goodies chromium xorg-server xf86-input-mouse xf86-input-keyboard xf86-video-vesa xorg-fonts-100dpi ttf-bitstream-vera freetype2 xorg-fonts-type1 alsa-utils xorg-xinit networkmanager networkmanager-openconnect networkmanager-openvpn networkmanager-pptp networkmanager-vpnc wget vi vim emacs mc lightdm lightdm-gtk-greeter
```
## Locales:
```bash
echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen && locale-gen && echo "LANG=en_US.UTF-8" >> /etc/locale.conf && echo "LC_COLLATE=C" >> /etc/locale.conf && echo "LC_TIME=en_US.UTF-8" >> /etc/locale.conf && echo "LC_MESSAGES=C" >> /etc/locale.conf
```

## set root password

## enable services
```bash
systemctl enable lightdm.service && systemctl enable sshd.service
```

## generate boot
```bash
mkinitcpio -p linux && grub-install --target=i386-pc --recheck --debug /dev/sda && grub-mkconfig -o /boot/grub/grub.cfg
```

## after restart

### add some user
```bash
useradd -m -d /home/usr -G wheel -s /bin/zsh usr
```

## AUR install trizen from normal user

```bash
curl https://aur.archlinux.org/cgit/aur.git/snapshot/trizen.tar.gz --output trizen.tar.gz && tar -xvf trizen.tar.gz && cd trizen/ && makepkg -s

sudo pacman -U ./<package name>
```
