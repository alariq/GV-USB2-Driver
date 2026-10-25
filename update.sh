#!/bin/sh

sudo rmmod gvusb2-video.ko
make
sudo insmod gvusb2-video.ko

# proper system-wide install
#sudo mkdir -p /lib/modules/$(uname -r)/kernel/drivers/media/usb/gvusb2/ && \
#zstd *.ko && \
#sudo mv -vt /lib/modules/$(uname -r)/kernel/drivers/media/usb/gvusb2/ *.ko.zst && \
#sudo depmod $(uname -r) && \
#sudo modprobe -v gvusb2-video && \
#sudo modprobe -v gvusb2-sound
