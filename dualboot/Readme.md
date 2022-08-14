# About 
How to Move GFreya OS from Qemu to Dual Boot with CAELinux.

# Files Needed for Adjustment
For dual boot configuration put these files in:

1. grub.cfg -> /boot/grub
* For grub.cfg remember that the partition number starts from one for normal partitions and five for extended partitions. For example, partition sda1 is (hd0,1) to GRUB and sdb3 is (hd1,3)

2. fstab -> /etc

3. applications -> /usr/share

4. desktop-directories -> /usr/share

5. xfce-applications.menu -> /etc/xdg/menus


# Configuring Dual Boot the First Time

1. From another OS (assuming we create it from Qemu first) open terminal then do all these commands below.

To mount a qcow2 disk image, first export the image to nbd, type at CAELinux terminal:
``` 
sudo modprobe nbd max_part=8
sudo qemu-nbd --connect=/dev/nbd0 /var/lib/libvirt/images/GFreya.qcow2
```
The first command loads the nbd kernel module. The max_part=N option specifies the maximum number of partitions we want to manage with nbd. The second command exports the specified disk image as a network block device (/dev/nbd0). 
  
To check the list of nbd-mapped partitions, then choose any one partition (e.g., /dev/nbd0p1) and mount it to a local mount point ( type:
```
sudo fdisk /dev/nbd0 -l
sudo mount /dev/nbd0p5 /FreyaSSD/GFreyaOS
```	
	
Once you are done, unmount it, and disconnect the disk image
```
sudo umount /FreyaSSD/GFreyaOS
sudo qemu-nbd --disconnect /dev/nbd0
rmmod nbd
```

2. I am using 2 SSDs, one for CAELinux and the other for GFreya OS, thus I use Rsync to copy the Freya OS from the mounted drive to the second SSD (The second SSD is mounted on /FreyaSSD, hence we can see the files of the second OS from CAELinux inside /FreyaSSD, viceversa).

Open terminal at CAELinux then type:

```
sudo -i
cd /path/to/mounted-GFreyaOS/
sudo rsync -rah --stats --info=progress2 . '/FreyaSSD'
```

3. Now open terminal of your host OS / CAELinux, then type:

```
update-grub2
```

You may check the /boot/grub/grub.cfg (from CAELinux filesystem directory,then see there is a line on GFreya OS.

4. Now shutdown CAELinux, then restart, you shall see.. beyond what eyes can see.

5. Need to configure something like kernel module that needs to be adjusted with real hardware

    * Check your vga type:
    ```
    lshw |grep vga
    ```
  
    See the driver then reconfigure the kernel when opening GFreya OS with the laptop directly, type
    ```
    cd /sources/linux-5.13.12
    make menuconfig
    ```
    Press `/` then type `nouveau` for nVidia graphics card driver. Then enable it as module [M], save and exit then type:
    ```
    make
    make modules_install
    cp -iv arch/x86/boot/bzImage /boot/vmlinuz-5.13.12-lfs-11.0
    cp -iv System.map /boot/System.map-5.13.12
    cp -iv .config /boot/config-5.13.12
    ```
6. Edit `/etc/X11/xorg.conf` and `~/xorg.conf.new` and adjust the driver and BusID with the VGA information that you get from `lspci` command.

    ```
    Section "Module"
    Load "nouveau"
    
    Section "Device"
    Driver "nouveau"
    BusID "PCI:1:0:0"
    ```
 
## Important kernel module for GFreyaOS in Dual Boot:
1. Device Drivers -> Graphics Support
    * [M] DRM drifver for VMWare Virtual GPU
    * [*] Enable framebuffer console under vmwgfx by default
