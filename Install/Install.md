Here is a little reminder of how to easily install Arch and Void :

# Arch :

Here are the steps to easily install arch (is a resume from [that](https://wiki.archlinux.org/index.php/Installation_guide#Installation)) :

- **Assure that you have internet** on the live session or try to use wpa_supplicant (good luck,in that case [here](https://wiki.archlinux.org/index.php/Wpa_supplicant) is where you should start)

- **Partition the disk with fdisk**.

- **Format the partition** : mkfs.ext4 /dev/sdaX for root and home and mkswap /dev/sdaX and swapon for swap

- **Mount partitions** first / at /mnt then create directory /mnt/home and mount /home at /mnt/home.

- **Select the mirrors** from /etc/pacman.d/mirrorlist.

- **Install Arch!** run `pacstrap /mnt base base-devel linux linux-firmware networkmanager vim grub`

- **Generate an fstab** run `genfstab -U /mnt >> /mnt/etc/fstab`

- **Chroot into the new system** (`arch-chroot /mnt`) set up timezone, localization and hostname: run for timezone `ln -sf /usr/share/zoneinfo/Region/City /etc/localtime` and `hwclock --systohc` for localization uncomment en_US.UTF-8 UTF-8 in /etc/locale.gen and run : `locale-gen` and run `echo LANG=en_US.UTF-8 >> /etc/locale.conf` and for the hostname write it to /etc/hostname.

- Set up **root passwd** (`passwd`)

- **Create new user** : `useradd -m usernmame ` and **add passwd** `passwd username`

- **Setup grub**: run `grub-install --target=i386-pc /dev/sdX` and `grub-mkconfig -o /boot/grub/grub.cfg`



# Void :

Easy as f. if you want to : log in as user: root, password : voidlinux and run: `void-installer`.

Source is [here](https://docs.voidlinux.org/installation/index.html)


